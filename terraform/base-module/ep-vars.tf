################################################################################
# Business Operation and Ownership Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# Environment Variable
variable "environment" {
  description = "Environment Variable"
  type = string
  default = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business Division who owns this Infrastructure"
  type = string
  default = "sales"
}

##############################################################
# VPC Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "ep-quotes-vpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# Personal CPU IP
variable "labcpu" {
  description = "Access from personal work station"
  type    = string
  default = "192.168.0.111"
}

# VPC Availability Zones
variable "vpc_azs" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# VPC Enable NAT Gateway (True or False)
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}

# VPC One NAT Gateway Per AZS (True or False)
variable "vpc_one_nat_gateway_per_az" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = false
}

#############################################################################
# EC2 Instance Variables

# SSH User for Provisioner
variable "ssh_user" {
  type    = string
  default = "ubuntu"
}

# Bastion EC2 Instance Type
variable "bastion_instance" {
  type    = string
  default = "t2.micro"
}

# Cluster EC2 Instance Type
variable "cluster_instance" {
  type    = string
  default = "t3.small"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key pair for Bastion Instance"
  type = string
  default = "ep-eks-key"
}

# AWS EC2 Ubuntu AMI ID
variable "ami_id" {
  description = "AWS EC2 AMI ID for Bastion Instance"
  type = string
  default = "ami-0aa2b7722dc1b5612"
}

variable "control_plane_count" {
  description = "Count of control planes to be provisioned"
  type    = number
  default = 3
}

variable "worker_node_count" {
  description = "Count of worker nodes to be provisioned"
  type    = number
  default = 3
}