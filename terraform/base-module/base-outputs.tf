###############################################################
# VPC Outputs

# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
###############################################################
# Bastion Outputs

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value       = module.bastion_instance.id
}

## ec2_bastion_public_ip
output "ec2_bastion_public_ip" {
  description = "Elastic IP associated to the Bastion Host"
  value       = aws_eip.bastion_eip.public_ip
}

###############################################################
# Cluster Outputs

output "cluster_keypair" {
  description = "Keypair for ssh access"
  value = tls_private_key.ssh.private_key_pem
  sensitive = true
}

output "cp_instances_one" {
  description = "Control plane instance attributes"
  value = aws_instance.control_instance[0].private_ip
}

output "cp_instances_two" {
  description = "Control plane instance attributes"
  value = aws_instance.control_instance[1].private_ip
}

output "cp_instances_three" {
  description = "Control plane instance attributes"
  value = aws_instance.control_instance[2].private_ip
}

output "worker_instances_one" {
  description = "Worker node instance attributes"
  value = aws_instance.worker_instance[0].public_ip
}

output "worker_instances_two" {
  description = "Worker node instance attributes"
  value = aws_instance.worker_instance[1].public_ip
}

output "worker_instances_three" {
  description = "Worker node instance attributes"
  value = aws_instance.worker_instance[2].public_ip
}

output "control_instance_azs_one" {
  description = "Availability zones for instances"
  value = aws_instance.control_instance[0].availability_zone
}

output "control_instance_azs_two" {
  description = "Availability zones for instances"
  value = aws_instance.control_instance[1].availability_zone
}

output "control_instance_azs_three" {
  description = "Availability zones for instances"
  value = aws_instance.control_instance[2].availability_zone
}

output "worker_instance_azs_one" {
  description = "Availability zones for instances"
  value = aws_instance.worker_instance[0].availability_zone
}

output "worker_instance_azs_two" {
  description = "Availability zones for instances"
  value = aws_instance.worker_instance[1].availability_zone
}

output "worker_instance_azs_three" {
  description = "Availability zones for instances"
  value = aws_instance.worker_instance[2].availability_zone
}