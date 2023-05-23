# Bastion Host - EC2 Instance that will be created in VPC Public Subnet
module "bastion_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"

  name                   = "${local.name}-BastionHost"
  ami                    = var.ami_id
  instance_type          = var.bastion_instance
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id]
  key_name               = aws_key_pair.ep_ec2_key.key_name
  user_data              = <<-EOF
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

  tags = local.common_tags
}

/*
module "control_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  for_each = toset(["one", "two", "three"])

  name = "controlplane-${each.key}"

  instance_type               = var.cluster_instance
  key_name                    = aws_key_pair.ep_ec2_key.key_name
  monitoring                  = true
  vpc_security_group_ids      = [module.control_plane_sg.security_group_id]
  subnet_id                   = element(module.vpc.private_subnets, 0)
  associate_public_ip_address = false

  tags = local.common_tags
}

module "worker_instance" {
source  = "terraform-aws-modules/ec2-instance/aws"

for_each = toset(["one", "two", "three"])

name = "worker-node-${each.key}"

instance_type               = var.cluster_instance
key_name                    = aws_key_pair.ep_ec2_key.key_name
monitoring                  = true
vpc_security_group_ids      = [module.worker_node_sg.security_group_id]
subnet_id                   = element(module.vpc.private_subnets, 0)
associate_public_ip_address = false

tags = local.common_tags
}

# Bastion
resource "aws_instance" "bastion" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = "true"
  security_groups             = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id]
  key_name                    = aws_key_pair.ep_ec2_key.key_name
  user_data = <<-EOF
                #!bin/bash
                echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config.d/10-insecure-rsa-keysig.conf
                systemctl reload sshd
                echo "${tls_private_key.ssh.private_key_pem}" >> /home/ubuntu/.ssh/id_rsa
                chown ubuntu /home/ubuntu/.ssh/id_rsa
                chgrp ubuntu /home/ubuntu/.ssh/id_rsa
                chmod 600   /home/ubuntu/.ssh/id_rsa
                echo "starting ansible install"
                apt-add-repository ppa:ansible/ansible -y
                apt update
                apt install ansible -y
                EOF


  tags = local.common_tags
}*/

# Control-Planes
resource "aws_instance" "control_instance" {
  count                      = var.master_node_count
  ami                        = var.ami_id
  instance_type              = var.cluster_instance
  subnet_id                  = element(module.vpc.private_subnets, count.index)
  key_name                   = aws_key_pair.ep_ec2_key.key_name
  security_groups            = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id, module.control_plane_sg.security_group_id,module.cni_sg.security_group_id, module.database_sg.security_group_id]
  monitoring                 = true

  tags = {
    Name = format("${local.name}-Control-Plane-%03d", count.index)
  }
}

# Workers
resource "aws_instance" "worker_instance" {
  count                      = var.worker_node_count
  ami                        = var.ami_id
  instance_type              = var.cluster_instance
  subnet_id                  = element(module.vpc.private_subnets, count.index)
  key_name                   = aws_key_pair.ep_ec2_key.key_name
  security_groups            = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id, module.worker_node_sg.security_group_id, module.cni_sg.security_group_id, module.database_sg.security_group_id]
  monitoring                 = true

  tags = {
    Name = format("${local.name}-Worker-%03d", count.index)
  }
}
