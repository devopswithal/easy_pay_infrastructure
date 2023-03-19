# Bastion
resource "aws_instance" "bastion" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = "true"
  security_groups             = [aws_security_group.ssh_access.id]
  key_name                    = aws_key_pair.ep_cap_ssh.key_name
  user_data                   = <<-EOF
                                #!/bin/bash
                                echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config.d/10-insecure-rsa-keysig.conf
                                systemctl reload sshd
                                echo "${tls_private_key.ssh.private_key_pem}" >> /home/ubuntu/.ssh/id_rsa
                                chown ubuntu /home/ubuntu/.ssh/id_rsa
                                chgrp ubuntu /home/ubuntu/.ssh/id_rsa
                                chmod 0400   /home/ubuntu/.ssh/id_rsa
                                echo "starting ansible install"
                                apt-add-repository ppa:ansible/ansible -y
                                apt update
                                apt install ansible -y
                                EOF

  tags = {
    Name = "Bastion"
  }
}

# Masters
resource "aws_instance" "master_nodes" {
  count                      = var.master_node_count
  ami                        = var.ami_id
  instance_type              = "t3.small"
  subnet_id                  = element(module.vpc.private_subnets, count.index)
  key_name                   = aws_key_pair.ep_cap_ssh.key_name
  security_groups            = [aws_security_group.cluster_nodes.id, aws_security_group.master_nodes.id]

  tags = {
    Name = format("Master-%03d", count.index)
  }
}

# Workers
resource "aws_instance" "worker_nodes" {
  count                      = var.worker_node_count
  ami                        = var.ami_id
  instance_type              = "t3.micro"
  subnet_id                  = element(module.vpc.private_subnets, count.index)
  key_name                   = aws_key_pair.ep_cap_ssh.key_name
  security_groups            = [aws_security_group.cluster_nodes.id, aws_security_group.worker_nodes.id]

  tags = {
    Name = format("Worker-%03d", count.index)
  }
}
