## A. Getting Started

### Install Terraform  
[https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Install AWSCLI  
[https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

- Create an IAM User profile if you do not have one from the AWS Management Console
  - Go to:
    - IAM > Users > New User > Follow Prompts
  - In the User Profile: 
    - Security credentials> Access Keys > Create Access Key > Follow Prompts
    - Copy the Access and Secret keys into a safe location for later use.
- In a terminal, configure credentials and profiles from AWS IAM User with the following command:
  - Once prompted, enter your access key, secret key, region, and output format. 
  
        
      aws configure --profile terraform
 
## B. Initialize Backend

In this section, we will set up the backend which is where the shared ".tfstate" file is stored. Setup includes the base provider modules needed to run the terraform code. Terraform will download the required providers and store them in the. terraform directory. In AWS, an S3 storage bucket is created with a tfstate path. Here the terraform.tfstate file is updated with each plan, apply, delete, migrate, and other state changes in terraform modules. A DynamoDB table is also created for state locking. This keeps different developers from making changes to the infrastructure while locked, keeping code from being overwritten while being worked on. Finally, a few variables files are used to label our assets. Review each file then change to the backend directory to run the code.
### Review Files
- provider.tf


    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "4.66.0"
        }
      }
    }
    
    provider "aws" {
      profile = "terraform"
      region  = var.aws_region
    }
    
- ep-vars.tf


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
      default = "Sales"
    }
- ep-local-vars.tf


    # Business Variables For Local Use In Terraform
    locals {
      owners = var.business_divsion
      environment = var.environment
      name = "${local.owners}-${local.environment}"
      common_tags = {
        owners = local.owners
        environment = local.environment
      }
    }
    
- s3dynamodb.tf


    resource "aws_s3_bucket" "ep_cluster_state_store" {
      bucket = "ep-cluster-state-store"
    
      tags = "local.common_tags"
    }
    
    resource "aws_s3_object" "terraform_state_store" {
      bucket = "ep-cluster-state-store"
      key    = "tfstate/"
    
      depends_on = [
        aws_s3_bucket.ep_cluster_state_store
      ]
    }
    
    resource "aws_s3_bucket_versioning" "ep_state_versioning" {
      bucket = aws_s3_bucket.ep_cluster_state_store.id
      versioning_configuration {
        status = "Enabled"
      }
    }
    
    resource "aws_dynamodb_table" "ep_cluster_state_lock" {
      name           = "ep-cluster-state-lock"
      read_capacity  = 5
      write_capacity = 5
      hash_key       = "LockID"
    
      attribute {
        name = "LockID"
        type = "S"
      }
    }

### Initialize, Plan, and Apply Backend 

 
    cd ../terraform/backend/
    terraform init
    terraform plan -out=plan.tf
    terraform apply plan.tf | tee apply.md

## C. Base-module
This is the main section of code. Here the infrastructure is built and applications are run. At the end of this run, there will be a complete AWS VPC with security groups, load balancers, bastion host, control-plane, and worker instances that are running a sample application deployed with Kubernetes pods and services.

The backend.tfvars and provider files are used to connect to shared state store. Variables for the entire run are kept in the ep-vars.tf and local-vars.tf files.

- backend.tfvars


    bucket               = "ep-cluster-state-store"
    key                  = "tfstate/terraform.tfstate"
    region               = "us-east-1"
    dynamodb_table       = "ep-cluster-state-lock"

- provider.tf


    provider "aws" {
      profile = "terraform"
      region  = var.aws_region
    }
    
    terraform {
      backend "s3" {
        bucket = "ep-cluster-state-store"
        key    = "tfstate/terraform.tfstate"
        region = "us-east-1"
        workspace_key_prefix = "environment"
        dynamodb_table = "ep-eks-state-lock"
      }
    
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "5.2.0"
        }
      }
    }

ep-vars.tf


    ################################################################################
    # Business Operation and Ownership Variables
    ...
    
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

The vpc module requires a few different settings to make out AWS integration work. The basic VPC settings are the name, availability zones, cidr block, public subnets, and private subnets. The public subnets house the data plane which receives external access through the internet facing load balancer, and private subnets house the control-plane instances that manage the cluster. Each subnet must be tagged with "kubernetes.io/role/elb" = "1" and "kubernetes.io/cluster/<cluster name>" = "owned" to integrate with service load balancers. DNS support and hostnames must be enabled to resolve dns names. For cost savings, one NAT gateway for all availability zones will be provisioned. Included is also the elastic ip for the bastion host.

- vpc.tf


    module "vpc" {
        source = "terraform-aws-modules/vpc/aws"
        
        name          = var.vpc_name
        cidr          = var.vpc_cidr_block
        
        enable_ipv6             = false
        map_public_ip_on_launch = true
        
        azs               = var.vpc_azs
        private_subnets   = var.vpc_private_subnets
        public_subnets    = var.vpc_public_subnets
        
        public_subnet_tags = {
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/kubernetes" = "owned"
        }
        private_subnet_tags = {
        "kubernetes.io/role/internal-elb" = "1"
        }
        
        enable_nat_gateway     = var.vpc_enable_nat_gateway
        single_nat_gateway     = var.vpc_single_nat_gateway
        one_nat_gateway_per_az = var.vpc_one_nat_gateway_per_az
        
        enable_dns_support     = true
        enable_dns_hostnames   = true
        private_subnet_enable_resource_name_dns_a_record_on_launch = true
        public_subnet_enable_resource_name_dns_a_record_on_launch = true
        
        instance_tenancy = "default"
        
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
        vpc_tags = local.common_tags
    }
    
    resource "aws_eip" "bastion_eip" {
        depends_on = [ module.bastion_instance, module.vpc ]
        instance = module.bastion_instance.id
        vpc      = true
        tags = local.common_tags
    }
The security groups are broken down into their functions: ssh, frontend, control-plane, data-plane, cni plugins, and database access. This allows modification of rules that only affect a subset of assets.

- secgroups.tf


    module "ssh_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "ssh-service"
        description = "Security group for ssh from bastion to cluster"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            from_port   = 22
            to_port     = 22
            protocol    = "tcp"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            },
            {
            from_port   = -1
            to_port     = -1
            protocol    = "icmp"
            description = "net-tools ports"
            cidr_blocks = "0.0.0.0/0"
            },
        ]
            egress_with_cidr_blocks = [
            {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            }
        ]
    }
    
    
    module "alb_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "alb-frontend"
        description = "Security group for internet facing alb"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            from_port   = 80
            to_port     = 80
            protocol    = "tcp"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            },
            {
            from_port   = 8080
            to_port     = 8181
            protocol    = "tcp"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            },
            {
            from_port   = 443
            to_port     = 443
            protocol    = "tcp"
            description = "http and https ports"
            cidr_blocks = "0.0.0.0/0"
            },
            {
            # Ingress Controller Webhook
            from_port   = 8443
            to_port     = 8443
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            from_port   = -1
            to_port     = -1
            protocol    = "icmp"
            description = "net-tools ports"
            cidr_blocks = "0.0.0.0/0"
            },
        ]
        egress_with_cidr_blocks = [
            {
            from_port   = 0
            to_port     = 0
            protocol    = -1
            description = "egress to WWW"
            cidr_blocks = "0.0.0.0/0"
            },
        ]
    }
    
    module "control_plane_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "k8s-cluster-service"
        description = "Security group for control-plane"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            # Kubernetes API Server
            from_port   = 6443
            to_port     = 6443
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            # Kubelet API
            from_port   = 10250
            to_port     = 10250
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
              # Kubelet API HealtzPort
              from_port   = 10248
              to_port     = 10248
              protocol    = "tcp"
              cidr_blocks = var.vpc_cidr_block
            },
            {
              # Kube-scheduler
              from_port   = 10259
              to_port     = 10259
              protocol    = "tcp"
              cidr_blocks = var.vpc_cidr_block
            },
            {
              # Kube-controller-mgr
              from_port   = 10257
              to_port     = 10257
              protocol    = "tcp"
              cidr_blocks = var.vpc_cidr_block
            },
            {
              # DNS
              from_port   = 53
              to_port     = 53
              protocol    = "tcp"
              cidr_blocks = var.vpc_cidr_block
            },
            {
              # etcd server client API
              from_port   = 2379
              to_port     = 2380
              protocol    = "tcp"
              cidr_blocks = var.vpc_cidr_block
            },
        ]
        egress_with_cidr_blocks = [
            {
            from_port   = -1
            to_port     = -1
            protocol    = "-1"
            cidr_blocks = "0.0.0.0/0"
            }
        ]
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    module "worker_node_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "worker-node"
        description = "Security group for worker-nodes"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            # NodePort Services†
            from_port   = 30000
            to_port     = 32767
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            # Kubelet API
            from_port   = 10250
            to_port     = 10250
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            # DNS
            from_port   = 53
            to_port     = 53
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            # AWS LB Controller
            from_port   = 9443
            to_port     = 9443
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
        ]
        egress_with_cidr_blocks = [
            {
            from_port   = -1
            to_port     = -1
            protocol    = "-1"
            cidr_blocks = "0.0.0.0/0"
            }
        ]
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    module "database_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "database-service"
        description = "Security group for database instance"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            from_port   = 3306
            to_port     = 3306
            protocol    = "tcp"
            description = "mysql ports"
            cidr_blocks = "0.0.0.0/0"
            },
        ]
        egress_with_cidr_blocks = [
            {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            }
        ]
    }
    
    module "cni_sg" {
        source = "terraform-aws-modules/security-group/aws"
        
        name        = "cni-plugins-sg"
        description = "Security group for cni plugins"
        vpc_id      = module.vpc.vpc_id
        
        ingress_with_cidr_blocks = [
            {
            # Flannel
            from_port   = 8472
            to_port     = 8472
            protocol    = "tcp"
            cidr_blocks = var.vpc_cidr_block
            },
            {
            # Flannel Backend UDP
            from_port   = 8472
            to_port     = 8472
            protocol    = "udp"
            cidr_blocks = var.vpc_cidr_block
            },
        ]
        egress_with_cidr_blocks = [
            {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            description = "User-service ports"
            cidr_blocks = "0.0.0.0/0"
            }
        ]
    }

To create a high availability cluster, a network load balancer fronts the control plane listening and forwarding on the kube-apiserver port 6443. A health check ensures that the control plane is serving TCP request on port 6443. This asset must also have the "kubernetes.io/cluster/<cluster-name>" = "owned" tag.

- internal-nlb.tf


    resource "aws_lb" "control_plane_nlb" {
        name               = "control-plane-nlb"
        internal           = true
        load_balancer_type = "network"
        subnets            = module.vpc.private_subnets
        
        enable_deletion_protection = false
        
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    resource "aws_lb_target_group" "cplane_tg" {
        name = "cplane-tg"
        port = 6443
        protocol = "TCP"
        vpc_id = module.vpc.vpc_id
        target_type = "ip"
        
        health_check {
            port      = 6443
            protocol  = "TCP"
            interval  = 30
            healthy_threshold = 2
            unhealthy_threshold = 2
        }
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    resource "aws_lb_listener" "control_plane_nlb_listener" {
        load_balancer_arn = aws_lb.control_plane_nlb.arn
        port = 6443
        protocol = "TCP"
        
        default_action {
            target_group_arn = aws_lb_target_group.cplane_tg.id
            type = "forward"
            }
        tags = {
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    resource "aws_lb_target_group_attachment" "control_plane_nlb_attach" {
        count            = length(aws_instance.control_instance)
        target_group_arn = aws_lb_target_group.cplane_tg.arn
        target_id        = element(aws_instance.control_instance.*.private_ip, count.index)
    }

There are three types of instances created in this module: bastion host, control-plane, and worker-nodes (data-plane). For security purposes, ssh access to the cluster is only allowed from the bastion host from within the vpc cidr block. The control-plane and worker nodes are tagged with the Kubernetes cluster tag. Access keys are provisioned and shared from the local machine to all provisioned instances.

- instances.tf
 

    # Bastion Host - EC2 Instance that will be created in VPC Public Subnet
    module "bastion_instance" {
        source  = "terraform-aws-modules/ec2-instance/aws"
        version = "5.0.0"
        
        name                   = "BastionHost"
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
    
    # Control-Planes
    resource "aws_instance" "control_instance" {
        count                      = var.control_plane_count
        ami                        = var.ami_id
        instance_type              = var.cluster_instance
        subnet_id                  = element(module.vpc.private_subnets, count.index)
        key_name                   = aws_key_pair.ep_ec2_key.key_name
        security_groups            = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id, module.control_plane_sg.security_group_id,module.cni_sg.security_group_id, module.database_sg.security_group_id]
        monitoring                 = true
        
        iam_instance_profile = aws_iam_instance_profile.control_plane_instance_profile.id
        
        tags = {
            Name = format("-Control-Plane-%03d", count.index)
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }
    
    # Workers
    resource "aws_instance" "worker_instance" {
        count                      = var.worker_node_count
        ami                        = var.ami_id
        instance_type              = var.cluster_instance
        subnet_id                  = element(module.vpc.public_subnets, count.index)
        key_name                   = aws_key_pair.ep_ec2_key.key_name
        security_groups            = [module.ssh_sg.security_group_id, module.nginx_sg.security_group_id, module.worker_node_sg.security_group_id, module.cni_sg.security_group_id, module.database_sg.security_group_id]
        monitoring                 = true
        
        iam_instance_profile = aws_iam_instance_profile.worker_node_instance_profile.id
        
        tags = {
            Name = format("Worker-Node-%03d", count.index)
            "kubernetes.io/cluster/kubernetes" = "owned"
        }
    }

- cap-keys.tf

    
    resource "tls_private_key" "ssh" {
      algorithm       = "RSA"
      rsa_bits        = "4096"
    }
    
    resource "local_file" "ep_ec2_key" {
      filename        = "ep-ec2-key.pem"
      file_permission = "0400"
      content = tls_private_key.ssh.private_key_pem
    }
    
    resource "aws_key_pair" "ep_ec2_key" {
      key_name        = "ep-ec2-key"
      public_key      = tls_private_key.ssh.public_key_openssh
    }

Each cluster instance has to have an IAM profile that attaches an IAM role with ec2, elb, and erc policies.
- iam.tf


    #### Control Plane IAM Role and Policy
    resource "aws_iam_role" "control_plane_iam_role" {
      name = "control-plane-iam-role"
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      tags = {
        "kubernetes.io/cluster/kubernetes" = "owned"
      }
    }
    
    resource "aws_iam_instance_profile" "control_plane_instance_profile" {
      name = "control-plane-instance-profile"
      role = aws_iam_role.control_plane_iam_role.name
    
      tags = {
        "kubernetes.io/cluster/kubernetes" = "owned"
      }
    }
    
    resource "aws_iam_role_policy_attachment" "ec2_policy_attachment" {
    
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
      role       = aws_iam_role.control_plane_iam_role.name
    
      depends_on = [aws_iam_role.control_plane_iam_role]
    }
    
    resource "aws_iam_role_policy_attachment" "elb_policy_attachment" {
    
      policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
      role       = aws_iam_role.control_plane_iam_role.name
    
      depends_on = [aws_iam_role.control_plane_iam_role]
    }
    
    resource "aws_iam_role_policy_attachment" "rds_policy_attachment" {
    
      policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
      role       = aws_iam_role.control_plane_iam_role.name
    
      depends_on = [aws_iam_role.control_plane_iam_role]
    }
    
    #### Worker Node IAM Role and Policy
    
    resource "aws_iam_role" "worker_node_iam_role" {
      name = "worker-node-iam-role"
      assume_role_policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
    EOF
      tags = {
        "kubernetes.io/cluster/kubernetes" = "owned"
      }
    }
    
    resource "aws_iam_instance_profile" "worker_node_instance_profile" {
      name = "worker-node-instance-profile"
      role = aws_iam_role.worker_node_iam_role.name
    
      tags = {
        "kubernetes.io/cluster/kubernetes" = "owned"
      }
    }
    
    resource "aws_iam_policy" "worker_policy" {
      name        = "worker-ec2-policy"
      description = "AWS Controller Manager worker node policy"
      policy = jsonencode({
        "Version": "2012-10-17",
        "Statement": [
          {
            "Effect": "Allow",
            "Action": [
              "ec2:DescribeInstances",
              "ec2:DescribeRegions",
              "ecr:GetAuthorizationToken",
              "ecr:BatchCheckLayerAvailability",
              "ecr:GetDownloadUrlForLayer",
              "ecr:GetRepositoryPolicy",
              "ecr:DescribeRepositories",
              "ecr:ListImages",
              "ecr:BatchGetImage"
            ],
            "Resource": "*"
          }
        ]
      })
    
      tags = {
        "kubernetes.io/cluster/kubernetes" = "owned"
      }
    }
    
    resource "aws_iam_role_policy_attachment" "worker_policy_attachment" {
    
      policy_arn = aws_iam_policy.worker_policy.arn
      role       = aws_iam_role.worker_node_iam_role.name
    
      depends_on = [aws_iam_role.worker_node_iam_role]
    }

The Ansible setup file creates the necessary Ansible inventory and variable files, then copies them over to the bastion host with the Kubernetes manifests to be run by Ansible. After the terraform apply run, the module outputs instance ip addresses and ids, availability zones, and vpc info.

- ansible-setup.tf


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
          "sleep 60 && ansible-playbook -i /home/ubuntu/ansible_hosts /home/ubuntu/ansible_plays/cluster_config.yml -vvv",
        ]
      }
    }

- ansible_host template


    [all:vars]
    ansible_ssh_common_args='-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
    
    [control-plane-leader]
    %{ for index, dns in control-plane-dns ~}
      %{ if index == 0 ~}
        ${dns} ansible_host=${control-plane-ip[index]} # ${control-plane-id[index]}
      %{ endif ~}
    %{ endfor ~}
    
    [control-plane-followers]
    %{ for index, dns in control-plane-dns ~}
      %{ if index != 0 ~}
        ${dns} ansible_host=${control-plane-ip[index]} # ${control-plane-id[index]}
      %{ endif ~}
    %{ endfor ~}
    
    [control-plane:children]
    control-plane-leader
    control-plane-followers
    
    [workers]
    %{ for index, dns in worker-node-dns ~}
    ${dns} ansible_host=${worker-node-ip[index]} # ${worker-node-id[index]}
    %{ endfor ~}

- base-outputs.tf


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

## D. Ansible Roles
The ansible files are split into several roles. The first, installs required dependencies, Docker bundle, Kubernetes bundle, and troubleshooting packages. Next, system settings must be configured for Docker and Kubernetes. The swap memory must be turned off and commented out of the system files, overlay and br_netfilter kernel modules must be loaded, bridge-nf-calls and ipv4 forwarding must be turned on in the iptables settings, the containerd config.toml file must be reset to default, and systemd cgroups set in for containerd and docker daemon configs. The third role copies the Kubernetes manifest to the control-plane instances.

- The main playbook is held in the cluster_config.yml file


    ### Install Dependencies, Docker, & Kubernetes
    - hosts: all
      become: true
      vars:
        - dependencies:
          - ca-certificates
          - curl
          - gnupg
          - apt-transport-https
        - docker:
          - docker-ce
          - docker-ce-cli
          - containerd.io
          - docker-buildx-plugin
          - docker-compose-plugin
        - kubernetes:
          - kubeadm
          - kubectl
          - kubelet
        - net:
          - net-tools
          - dnsutils
          - traceroute
          - telnet
          - tshark
      roles:
        - tools_install
        - vm_setup
    ##

    ### Copy Kubernetes Manifest Files
    - hosts: control-plane
      become: true
      roles:
        - k8s_manifests

    ### Master Node Configurations
    - hosts: control-plane-leader
      become: true
      vars_files:
        - ansible_vars_file.yml
      roles:
        - control_plane_leader
    ##

    ### Configure other master nodes
    - hosts: control-plane-followers
      become: true
      vars_files:
        - ansible_vars_file.yml
      roles:
        - control_plane_followers
    ##

    ### Worker Node Configurations
    - hosts: workers
      become: true
      roles:
        - worker_nodes
    ##

    ### Create Admin User and Install and Configure App
    - hosts: control-plane-leader
      become: true
      roles:
        - admin_user_creation

    - hosts:
        - control-plane-followers
        - workers
      become: true
      roles:
        - admin_user_install

    - hosts: control-plane-leader
      become: true
      roles:
        - install_app

- tools_install


    - name: Set hostnames
      ansible.builtin.shell:
        cmd: hostnamectl set-hostname "{{ inventory_hostname }}"
    
    ### https://docs.docker.com/engine/install/ubuntu/
    - name: Install Dependencies
      ansible.builtin.apt:
        name: "{{ dependencies }}"
        state: present

    - name: Update Cache
      ansible.builtin.apt:
        update_cache: true

    ### Docker
    - name: Install Keyring Directory
      ansible.builtin.file:
        path: /etc/apt/keyrings
        state: directory
        mode: '0755'

    - name: Install Docker GPG Key
      ansible.builtin.get_url:
        url: https://download.docker.com/linux/ubuntu/gpg
        dest: /etc/apt/keyrings/docker.asc
        mode: '0644'
        force: true

    - name: Install Docker Repository
      ansible.builtin.apt_repository:
        repo: "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu {{ ansible_distribution_release }} stable"
        filename: /etc/apt/sources.list.d/docker
        state: present
        update_cache: true

    - name: Install Docker Bundle
      ansible.builtin.apt:
        name: "{{ docker }}"
        state: present

    - name: Enable Docker
      ansible.builtin.systemd:
        name: docker
        state: started
        enabled: true
    
    ### CNI Plugins
    - name: Make CNI directory
      ansible.builtin.file:
        path: /opt/cni/bin
        state: directory

    - name: Download CNI plugins archive
      become: yes
      get_url:
        url: https://github.com/containernetworking/plugins/releases/download/v1.1.1/cni-plugins-linux-amd64-v1.1.1.tgz
        dest: /tmp/cni-plugins-linux-amd64-v1.1.1.tgz

    - name: Extract CNI plugins archive
      become: yes
      unarchive:
        src: /tmp/cni-plugins-linux-amd64-v1.1.1.tgz
        dest: /opt/cni/bin
        remote_src: yes
        extra_opts: "-z"
    
    ### Kubernetes
    - name: Add Kubernetes GPG Key
      ansible.builtin.get_url:
        url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
        dest: /etc/apt/keyrings/kubernetes-archive-keyring.asc
        mode: '0644'
        force: true

    - name: Sleep for 20 seconds
      ansible.builtin.wait_for:
        timeout: 20

    - name: Verify presence of GPG Key
      ansible.builtin.stat:
        path: /etc/apt/keyrings/kubernetes-archive-keyring.asc
      register: gpg_key

    - name: Add Kubernetes Repository
      ansible.builtin.apt_repository:
        repo: "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.asc] https://apt.kubernetes.io/ kubernetes-xenial main"
        filename: /etc/apt/sources.list.d/kubernetes.list
        state: present
      when: gpg_key.stat.exists

    - name: Update Cache
      ansible.builtin.apt:
        update_cache: true

    - name: Kubernetes Bundle Install
      ansible.builtin.apt:
        name: "{{ kubernetes }}"
        state: present

    - name: Install network tools
      ansible.builtin.apt:
        name: "{{ net }}"
        state: present


- vm_setup


    - name: Turn swap off
      ansible.builtin.shell:
        cmd: sudo swapoff -a

    - name: Comment out lines with "swap" in the file
      ansible.builtin.lineinfile:
        path: /etc/fstab
        regexp: '^(.* swap .*)$'
        line: '#\1'

    # https://kubernetes.io/docs/setup/production-environment/container-runtimes/
    # kernel modules required by setup
    - name: Create k8s.conf file in the modules-load directory
      ansible.builtin.copy:
        content: |
          overlay
          br_netfilter
        dest: /etc/modules-load.d/k8s.conf
        mode: '0644'

    - name: Load kernel k8s modules
      ansible.builtin.command:
        cmd: modprobe overlay

    - name: Load kernel k8s modules
      ansible.builtin.command:
        cmd: modprobe br_netfilter

    # sysctl params required by setup, params persist across reboots
    - name: Turn on iptable bridge calls and ipv4 forwarding
      ansible.builtin.copy:
        content: |
          net.bridge.bridge-nf-call-iptables  = 1
          net.bridge.bridge-nf-call-ip6tables = 1
          net.ipv4.ip_forward                 = 1
        dest: /etc/sysctl.d/k8s.conf
        mode: '0644'

    # Apply sysctl params without reboot
    - name: Load kernel k8s modules
      ansible.builtin.shell:
        cmd: sysctl --system

    - name: Verify iptables
      ansible.builtin.command:
        cmd: sysctl net.bridge.bridge-nf-call-iptables net.bridge.bridge-nf-call-ip6tables net.ipv4.ip_forward
      register: sysctl_config
      ignore_errors: true

    - debug:
        var: sysctl_config
      ignore_errors: true

    - name: Reset containerd toml file for kubernetes use
      ansible.builtin.shell:
        cmd: containerd config default | sudo tee /etc/containerd/config.toml

    - name: Set systemd as cgroupdriver
      ansible.builtin.replace:
        path: /etc/containerd/config.toml
        regexp: "            SystemdCgroup = false"
        replace: "            SystemdCgroup = true"

    - name: Comment out disabled plugins
      ansible.builtin.replace:
        path: /etc/containerd/config.toml
        regexp: "disabled_plugins "
        replace: "#disabled_plugins "

    - name: Docker daemon config
      ansible.builtin.copy:
        content: |
          {
             "exec-opts": ["native.cgroupdriver=systemd"],
             "log-driver": "json-file",
             "log-opts": {
             "max-size": "100m"
             },
             "storage-driver": "overlay2"
          }
        dest: /etc/docker/daemon.json

    - name: Reload daemons
      ansible.builtin.systemd:
        daemon_reload: true

    - name: Restart containerd
      ansible.builtin.systemd:
        name: containerd
        state: restarted

    - name: Restart docker
      ansible.builtin.systemd:
        name: docker
        state: restarted  

- k8s_manifests


    - name: Copy k8s manifest files
      ansible.builtin.copy:
        src: /home/ubuntu/kubernetes
        dest: $HOME/
      ignore_errors: true

Once these roles have been complete, roles that set up the cluster begin to run. The first targets the control-plane leader. The initialization of the cluster happens here, the aws-cloud-controller-manager is installed, the join commands for the remaining control-plane instances and worker instances are copied to a local file on the bastion host. The control-plane-followers role copies that join command then runs a script to join the cluster. Finally, the worker-nodes role copies the worker join command and runs a script to join them to the cluster.

- control_plane_leader


    - name: Install etcd-client
      ansible.builtin.apt:
        name: etcd-client
        state: present

    - name: Check ansible_vars_file.yml file exists.
      ansible.builtin.stat:
        path: /home/ubuntu/ansible_plays/ansible_vars_file.yml
      register: ansible_vars_file

    ## sudo kubeadm init --config=$HOME/kubernetes/kubeconfig.yml --upload-certs --v=10>> control_plane.txt

    - name: Initialize cluster with kubeadm
      ansible.builtin.shell:
        cmd: kubeadm init --pod-network-cidr=10.244.0.0/16 --cri-socket unix:///run/containerd/containerd.sock --control-plane-endpoint {{ control_plane_lb }}:6443  --upload-certs --v=5>> control_plane.txt
      register: result
      args:
        chdir: $HOME
        creates: control_plane.txt

    - name: Create .kube directory
      ansible.builtin.file:
        path: $HOME/.kube
        state: directory
        mode: '0755'

    - name: Copy admin.conf to user's kube config
      ansible.builtin.copy:
        src: /etc/kubernetes/admin.conf
        dest: $HOME/.kube/config
        remote_src: yes

    - name: Move kube-controller-manager manifest file out of static pod path
      ansible.builtin.command:
        cmd: mv /etc/kubernetes/manifests/kube-controller-manager.yaml /tmp/

    - name: Add cloud-provider flag to api-server config
      ansible.builtin.lineinfile:
        path: /etc/kubernetes/manifests/kube-apiserver.yaml
        insertafter: "    - kube-apiserver"
        line: "    - --cloud-provider=external"

    - name: Add cloud-provider flag to controller-manager config
      ansible.builtin.lineinfile:
        path: /tmp/kube-controller-manager.yaml
        insertafter: "    - kube-controller-manager"
        line: "    - --cloud-provider=external"

    - name: Add kubelet extra args
      ansible.builtin.lineinfile:
        path: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
        insertafter: \[Service\]
        line: Environment="KUBELET_EXTRA_ARGS=--resolv-conf=/run/systemd/resolve/resolv.conf --cloud-provider=external"

    - name: Restart kubelet
      ansible.builtin.systemd:
        daemon_reload: true
        name: kubelet
        state: restarted

    - name: Download Flannel
      ansible.builtin.get_url:
        url: https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
        dest: $HOME/kube-flannel.yml

    - name: Replace c-plane cni interface name
      ansible.builtin.replace:
        path: $HOME/kube-flannel.yml
        regexp: "cbr0"
        replace: "cni0"

    - name: Install Pod network
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kube-flannel.yml

    - name: Install AWS Cloud-Controller-Manager
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/aws-controller-manager.yml

    - name: Move kube-controller-manager manifest file back to static pod path
      ansible.builtin.command:
        cmd: mv /tmp/kube-controller-manager.yaml /etc/kubernetes/manifests/

    - name: Restart kubelet
      ansible.builtin.systemd:
        name: kubelet
        state: restarted

    - name: Sleep for 20 seconds
      ansible.builtin.wait_for:
        timeout: 20

    - name: get default kubeadm config
      ansible.builtin.shell:
        cmd: kubeadm config print init-defaults > kubeadm_config.yaml
      args:
        chdir: $HOME
        creates: kubeadm-config.yaml

    - name: Create a new certificate key
      ansible.builtin.shell:
        cmd: kubeadm init phase upload-certs --upload-certs --config $HOME/kubeadm_config.yaml
      register: join_certificate_key

    - name: Get join command
      ansible.builtin.shell:
        cmd: kubeadm token create --print-join-command --certificate-key "{{ join_certificate_key.stdout_lines[2] }}"
      register: cp_join_command

    - debug:
        var: cp_join_command

    - name: Copy join command to local file
      local_action:
        module: ansible.builtin.copy
        content: "{{ cp_join_command.stdout_lines[0] }}"
        dest: ./cp_join_command

    - name: Get worker node join command
      ansible.builtin.shell:
        cmd: kubeadm token create --print-join-command
      register: node_join_command

    - debug:
       var: node_join_command

    - name: Copy worker node join command to local file
      local_action:
        module: ansible.builtin.copy
        content: "{{ node_join_command.stdout_lines[0] }}"
        dest: ./node_join_command

- control_plane_followers


    - name: Kubectl Install
      ansible.builtin.apt:
        name: kubectl
        state: present
        force: yes

    - name: Add kubelet extra args
      ansible.builtin.lineinfile:
        path: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
        insertafter: \[Service\]
        line: Environment="KUBELET_EXTRA_ARGS=--resolv-conf=/run/systemd/resolve/resolv.conf --cloud-provider=external"

    - name: Copy the control-plane join command to control-plane-followers
      ansible.builtin.copy:
        src: cp_join_command
        dest: /tmp/cp_join_command.sh
        mode: '0777'

    - name: Add cri socket to kubelet
      ansible.builtin.replace:
        path: /tmp/cp_join_command.sh
        regexp: "--token"
        replace: "--cri-socket='unix:///run/containerd/containerd.sock' --v=10 --token > control_plane_followers.txt"

    - name: Join the control-plane-followers node to cluster
      ansible.builtin.command:
        cmd: sh /tmp/cp_join_command.sh >> followers_complete.txt
      register: result
      args:
        chdir: /tmp/
        creates: followers_complete.txt

    - name: Sleep for 20 seconds
      ansible.builtin.wait_for:
        timeout: 20

    - name: Create .kube directory
      ansible.builtin.file:
        path: $HOME/.kube
        state: directory
        mode: '0755'

    - name: Check admin.conf file exists.
      ansible.builtin.stat:
        path: /etc/kubernetes/admin.conf
      register: kube_conf

    - name: Copy admin.conf to user's kube config
      ansible.builtin.copy:
        src: /etc/kubernetes/admin.conf
        dest: $HOME/.kube/config
        remote_src: yes
      when: kube_conf.stat.exists

- worker_nodes


    - name: Add kubelet extra args
      ansible.builtin.lineinfile:
        path: /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
        insertafter: \[Service\]
        line: Environment="KUBELET_EXTRA_ARGS=--resolv-conf=/run/systemd/resolve/resolv.conf --cloud-provider=external"

    - name: Copy the join command for worker nodes
      ansible.builtin.copy:
        src: node_join_command
        dest: /tmp/node_join_command.sh
        mode: '0777'

    - name: Add containerd socket
      ansible.builtin.replace:
        path: /tmp/node_join_command.sh
        regexp: "--token"
        replace: "--cri-socket='unix:///run/containerd/containerd.sock' --token"

    - name: Join the worker node to cluster
      ansible.builtin.command:
        cmd: sh /tmp/node_join_command.sh >> workers_complete.txt
      args:
        chdir: /tmp/
        creates: workers_complete.txt


The final set of roles creates an admin user, copies the user keys, certificate, and conf files to the rest of the cluster, and installs all the Kubernetes resources required to run the application: config-map, secrets, persistent volume and volume claim, database and application deployments, services, load balancer, and horizontal pod autoscaler.

- admin_user_creation


    - name: Make admin directory
      ansible.builtin.file:
        path: $HOME/admin/
        state: directory

    - name: Generate an OpenSSL private key for cluster-admin
      community.crypto.openssl_privatekey:
        path: $HOME/admin/cluster-admin.key
        size: 2048
        backup: true
        state: present
        return_content: true
      register: privatekey

    - name: Copy cluster-admin.key to local file
      local_action:
        module: ansible.builtin.copy
        content: "{{ privatekey }}"
        dest: ./cluster-admin.key

    - name: Generate an OpenSSL Certificate Signing Request for cluster-admin
      community.crypto.openssl_csr:
        path: $HOME/admin/cluster-admin.csr
        privatekey_path: $HOME/admin/cluster-admin.key
        country_name: US
        state_or_province_name: TX
        locality_name: Dallas
        organization_name: cap-quotes-app
        organizational_unit_name: cap-quotes-app
        email_address: role@cap-quotes-app.com
        common_name: cluster-admin
        backup: true

    - name: Generate an OpenSSL certificate signed with your kubernetes CA certificate
      community.crypto.x509_certificate:
        path: $HOME/admin/cluster-admin.crt
        csr_path: $HOME/admin/cluster-admin.csr
        ownca_path: /etc/kubernetes/pki/ca.crt
        ownca_privatekey_path: /etc/kubernetes/pki/ca.key
        provider: ownca
        state: present
        return_content: true
      register: certificate

    - name: Copy cluster-admin.crt to local file
      local_action:
        module: ansible.builtin.copy
        content: "{{ certificate }}"
        dest: ./cluster-admin.crt

    - name: Create namespace
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-namespaces.yml

    - name: Apply admin role
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-admin.yml -n cap-quotes-app

    - name: Apply admin rolebinding
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-admin-rb.yml -n cap-quotes-app

    - name: Setting credentials to the user
      ansible.builtin.shell:
        cmd: kubectl config set-credentials cluster-admin --client-certificate=$HOME/admin/cluster-admin.crt --client-key=$HOME/admin/cluster-admin.key

    - name: Set context to cluster-admin.
      ansible.builtin.shell:
        cmd: kubectl config set-context cluster-admin-context --cluster=kubernetes --namespace=cap-quotes-app --user=cluster-admin

    - name: Copy admin.conf to cluster-admin-conf
      ansible.builtin.copy:
        src: $HOME/.kube/config
        dest: $HOME/admin/cluster-admin-conf
        remote_src: true

    - name: Register cluster-admin-conf contents.
      ansible.builtin.shell:
        cmd: cat $HOME/admin/cluster-admin-conf
      register: admin_conf

    - name: Copy cluster-admin-conf to local file
      local_action:
        module: ansible.builtin.copy
        content: "{{ admin_conf.stdout_lines }}"
        dest: ./cluster-admin-conf

- admin_user_install


    - name: Make admin directory
      ansible.builtin.file:
        path: $HOME/admin/
        state: directory

    - name: Copy the cluster-admin-conf all cluster nodes
      ansible.builtin.copy:
        src: ./cluster-admin-conf
        dest: $HOME/admin/cluster-admin-conf
        mode: '0600'

    - name: Copy the cluster-admin.key to all cluster nodes
      ansible.builtin.copy:
        src: ./cluster-admin.key
        dest: $HOME/admin/cluster-admin.key
        mode: '0600'

    - name: Copy the cluster-admin.crt to all cluster nodes
      ansible.builtin.copy:
        src: ./cluster-admin.crt
        dest: $HOME/admin/cluster-admin.crt
        mode: '0600'
- install_app



    - name: Download metrics server yaml file
      ansible.builtin.get_url:
        url: https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
        dest: $HOME/components.yml

    - name: Disable tls authentications # after original line 139
      ansible.builtin.lineinfile:
        path: $HOME/components.yml
        insertafter: "        - --metric-resolution=15s"
        line: "        - --kubelet-insecure-tls"

    - name: Install metrics server
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/components.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create db configmap
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/mysql-configmap.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create app secrets
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-secrets.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create persistent volume
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-pv.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create deployment for db pods
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-db.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Sleep for 30 seconds
      ansible.builtin.wait_for:
        timeout: 30

    - name: Create deployment for app pods
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-app.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create db ingress network policy
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/cap-quotes-net.yml --kubeconfig=$HOME/admin/cluster-admin-conf

    - name: Create deploy horizontal pod autoscaler
      ansible.builtin.shell:
        cmd: kubectl apply -f $HOME/kubernetes/hpa.yml --kubeconfig=$HOME/admin/cluster-admin-conf

### Initialize, Plan, and Apply Backend. 


    cd ../terraform/base-module/
    terraform init -backend-config=backend.tfvars
    terraform plan -out=plan.tf
    terraform apply plan.tf | tee apply.md`

## E. Logging in and Testing
Now that all the roles have run, shh into the bastion host, then the first control-plane. Check what resources are running on the cluster. There should be all the core Kubernetes resources, a daemonset for the aws-cloud-controller-manager with a pod on each node, a flannel daemonset with corresponding pods, a single mysql pod, three application pods, and the horizontal pod autoscaler. 
The mysql pod must be logged into to ensure connectivity, which will trigger connection to the application pod. Finally, the dns name and port of the external load balancer can be used to access the application and used in a pod load generator to test the pod autoscaler.

### SSH into Bastion Host


    ssh ubuntu@<instance-ip>

### SSH into Control-Plane Instance & Login as Root


    ssh ubuntu@<instance-ip>
    sudo su -

### Check Running Resources

    
    kubectl get all -A -o wide

### Login Into Mysql Pod
- Get the mysql pod name.


    kubectl get pods -n cap-quotes-app -l app=mysql -o jsonpath='{.items[0].metadata.name}'

- Log into the instance.


    kubectl exec -it <mysql_pod_name> -n cap-quotes-app -- mysql -h mysql -u devopsadmin -pmypass123 quotes_database

### Test ALB for App Instance.
- Get the External IP for the cap-quotes-frontend service.


     kubectl get svc -n cap-quotes-app`
- Go to \<alb dns>:80/quotes in any web browser.

### Test HPA.
- Open a separate terminal and ssh twice to get the the control instance.

- Watch the HPA for the app by running:


    kubectl get hpa -n cap-quotes-app

- In a separate terminal run:


    kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http:// <alb dns>:80/quotes; done"

## F. ETCD Backup


- Get the etcd pod advertise-client-address


    kubectl get pods -n kube-system
    kubectl describe pods <etcd-pod-name> -n kube-system

- Export the advertise-client-address as a environment variable


    export advertise_url=<<advertise-client-url>>
    echo $advertise_url

- Run the backup command
 

    sudo ETCDCTL_API=3 etcdctl \
    --endpoints $advertise_url \
    --cacert /etc/kubernetes/pki/etcd/ca.crt \
    --key /etc/kubernetes/pki/etcd/server.key \
    --cert /etc/kubernetes/pki/etcd/server.crt snapshot etcd_backup.db       

## G. Clean up.

### Delete the cap-quotes-deployment to remove the elb for the app service


    kubectl delete -f kubernetes/cap-quotes-app.yml -n cap-quotes-app

### Exit out of root, out of the control instance, and out of the bastion host.

### Destroy the infrastructure assets.

    terraform destroy –auto-approve # Auto-approve if you do not want a stdout of the resources to be destroyed

### Change to the backend directory and destroy the backend.
    cd ../terraform/backend
    terraform destroy –auto-approve

