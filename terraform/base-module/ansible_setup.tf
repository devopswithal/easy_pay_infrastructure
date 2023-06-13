# Create ansible host inventory file
resource "local_file" "ansible_inventory" {
  content             = templatefile("${path.root}/templates/inventory.tftpl",
    {
      control-plane-dns       = aws_instance.control_instance.*.private_dns,
      control-plane-ip        = aws_instance.control_instance.*.private_ip,
      control-plane-id        = aws_instance.control_instance.*.id,
      worker-node-dns         = aws_instance.worker_instance.*.private_dns,
      worker-node-ip          = aws_instance.worker_instance.*.private_ip,
      worker-node-id          = aws_instance.worker_instance.*.id
    }
  )
  filename            = "${path.root}/ansible_hosts"
}

# Ensures that bastion host is running before file transfers
resource "null_resource" "bastion_init" {
  depends_on    = [
    module.bastion_instance,
  ]

  triggers = {
    "always_run" = timestamp()
  }

  provisioner "remote-exec" {
    inline = [
      "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done",
    ]

    connection {
      type          = "ssh"
      host          = aws_eip.bastion_eip.public_ip
      user          = var.ssh_user
      private_key   = tls_private_key.ssh.private_key_pem
      agent         = false
      insecure      = true
    }
  }
}

# Create ansible variable file that contains control-plane lb dns
resource "local_file" "ansible_vars_file" {
  content = <<-DOC
        control_plane_lb: ${aws_lb.control_plane_nlb.dns_name}
        DOC
  filename = "ansible_plays/ansible_vars_file.yml"
}

# Copy kubernetes manifest files over to bastion host
resource "null_resource" "copy_k8s_manifests" {
  depends_on = [
    null_resource.bastion_init,
    module.bastion_instance,
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/kubernetes"
    destination       = "/home/ubuntu/kubernetes/"

    connection {
      type            = "ssh"
      host            = aws_eip.bastion_eip.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      insecure        = true
      agent           = false
    }

  }
}

# Copy ansible host inventory file to bastion host
resource "null_resource" "provisioner" {
  depends_on = [
    local_file.ansible_inventory,
    null_resource.bastion_init,
    module.bastion_instance,
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/ansible_hosts"
    destination       = "/home/ubuntu/ansible_hosts"

    connection {
      type            = "ssh"
      host            = aws_eip.bastion_eip.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      agent           = false
      insecure        = true
    }
  }
}

# Copy ansible playbooks over to bastion host
resource "null_resource" "copy_ansible_playbooks" {
  depends_on = [
    null_resource.provisioner,
    null_resource.bastion_init,
    local_file.ansible_vars_file,
    module.bastion_instance,
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/ansible_plays"
    destination       = "/home/ubuntu/ansible_plays/"

    connection {
      type            = "ssh"
      host            = aws_eip.bastion_eip.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      insecure        = true
      agent           = false
    }

  }
}

# Start ansible and run playbooks
resource "null_resource" "run_ansible" {

  depends_on = [
    local_file.ansible_inventory,
    local_file.ansible_vars_file,
    null_resource.copy_k8s_manifests,
    null_resource.provisioner,
    null_resource.bastion_init,
    null_resource.copy_ansible_playbooks,
    module.bastion_instance,
    aws_instance.control_instance,
    aws_instance.worker_instance,
    aws_eip.bastion_eip,
    module.vpc,
  ]
  triggers = {
    "always_run"        = timestamp()
  }

  connection {
    type              = "ssh"
    host              = aws_eip.bastion_eip.public_ip
    user              = var.ssh_user
    private_key       = tls_private_key.ssh.private_key_pem
    insecure          = true
    agent             = false
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'starting ansible playbooks...'",
      "sleep 60 && ansible-playbook -i /home/ubuntu/ansible_hosts /home/ubuntu/ansible_plays/cluster_config.yml",
    ]
  }
}
