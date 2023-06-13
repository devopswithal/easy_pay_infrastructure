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
