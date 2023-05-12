resource "local_file" "ansible_inventory" {
  content             = templatefile("${path.root}/templates/inventory.tftpl",
    {
      masters-dns     = module.control_instance.*.private_dns,
      masters-ip      = module.control_instance.*.private_ip,
      masters-id      = module.control_instance.*.id,
      workers-dns     = module.worker_instance.*.private_dns,
      workers-ip      = module.worker_instance.*.private_ip,
      workers-id      = module.worker_instance.*.id
    }
  )
  filename            = "${path.root}/inventory"
}

resource "null_resource" "provisioner" {
  depends_on = [
    local_file.ansible_inventory,
    module.bastion_instance
  ]

  triggers = {
    "always_run"      = timestamp()
  }

  provisioner "file" {
    source            = "${path.root}/inventory"
    destination       = "/home/ubuntu/inventory"

    connection {
      type            = "ssh"
      host            = module.bastion_instance.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      agent           = false
      insecure        = true
    }
  }
}

resource "local_file" "ansible_vars_file" {
    content = <<-DOC
        master_lb: ${module.control_plane_nlb.dns_name}
        DOC
    filename = "ansible_plays/ansible_vars_file.yml"
}



resource "null_resource" "copy_ansible_playbooks" {
  depends_on = [
    null_resource.provisioner,
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
      host            = module.bastion_instance.public_ip
      user            = var.ssh_user
      private_key     = tls_private_key.ssh.private_key_pem
      insecure        = true
      agent           = false
    }

  }
}


