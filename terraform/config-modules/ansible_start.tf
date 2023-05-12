resource "null_resource" "run_ansible" {

  triggers = {
    always_run        = timestamp()
  }

  connection {
    type              = "ssh"
    host              = data.terraform_remote_state.ep_cluster.outputs.ec2_bastion_public_ip
    user              = var.ssh_user
    private_key       = data.terraform_remote_state.ep_cluster.outputs.cluster_keypair
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


