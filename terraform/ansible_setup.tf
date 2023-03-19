resource "local_file" "ansible_inventory" {
  content             = templatefile("${path.root}/templates/inventory.tftpl",
    {
      masters-dns     = aws_instance.master_nodes.*.private_dns,
      masters-ip      = aws_instance.master_nodes.*.private_ip,
      masters-id      = aws_instance.master_nodes.*.id,
      workers-dns     = aws_instance.worker_nodes.*.private_dns,
      workers-ip      = aws_instance.worker_nodes.*.private_ip,
      workers-id      = aws_instance.worker_nodes.*.id
    }
  )
  filename            = "${path.root}/inventory"
}

resource "null_resource" "provisioner" {
  depends_on = [
    local_file.ansible_inventory,
    aws_instance.bastion
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/inventory"
    destination       = "/home/ubuntu/inventory"

    connection {
      type            = "ssh"
      host            = aws_instance.bastion.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      agent           = false
      insecure        = true
    }
  }
}

resource "local_file" "ansible_vars_file" {
    content = <<-DOC
        master_lb: ${aws_lb.ep_masters_lb.dns_name}
        DOC
    filename = "ansible_plays/ansible_vars_file.yml"
}

resource "null_resource" "copy_ansible_playbooks" {
  depends_on = [
    null_resource.provisioner,
    aws_instance.bastion,
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/ansible_plays"
    destination       = "/home/ubuntu/ansible_plays/"

    connection {
      type            = "ssh"
      host            = aws_instance.bastion.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      insecure        = true
      agent           = false
    }

  }
}

resource "null_resource" "run_ansible" {
  depends_on = [
    null_resource.provisioner,
    null_resource.copy_ansible_playbooks,
    aws_instance.master_nodes,
    aws_instance.worker_nodes,
    module.vpc,
    aws_instance.bastion,
  ]

  triggers = {
    always_run        = timestamp()
  }

  connection {
    type              = "ssh"
    host              = aws_instance.bastion.public_ip
    user              = var.ssh_user
    private_key       = tls_private_key.ssh.private_key_pem
    insecure          = true
    agent             = false
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'starting ansible playbooks...'",
      "sleep 60 && ansible-playbook -i /home/ubuntu/inventory /home/ubuntu/ansible_plays/cluster_config.yml ",
    ]
  }
}
