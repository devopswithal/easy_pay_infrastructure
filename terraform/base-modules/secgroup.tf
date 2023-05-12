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
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      description = "net-tools ports"
      cidr_blocks = [var.vpc_cidr_block, var.labcpu]
    },
  ]
}

module "alb_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "alb-frontend"
  description = "Security group for internet facing alb"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = -1
      to_port     = -1
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
      from_port   = -1
      to_port     = -1
      protocol    = "tcp"
      description = "egress to WWW"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "control_plane_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "k8s-cluster-service"
  description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      # Kubernetes API Server
      from_port   = 6443
      to_port     = 6443
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Kubelet API
      from_port   = 10250
      to_port     = 10250
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Kube-scheduler
      from_port   = 10259
      to_port     = 10259
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Kube-controller-mgr
      from_port   = 10257
      to_port     = 10257
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # DNS
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # etcd server client API
      from_port   = 2379
      to_port     = 2380
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # BGP Peering
      from_port   = 179
      to_port     = 179
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Calico Node to Node
      from_port   = 5473
      to_port     = 5473
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Calico Felix
      from_port   = 9099
      to_port     = 9099
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # HTTPS
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # HTTP
      from_port   = 8080
      to_port     = 8089
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # MySQL
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = [var.vpc_cidr_block]
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = -1
      to_port     = -1
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
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
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Kubelet API
      from_port   = 10250
      to_port     = 10250
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # DNS
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # BGP Peering
      from_port   = 179
      to_port     = 179
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Calico Node to Node
      from_port   = 5473
      to_port     = 5473
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # Calico Felix
      from_port   = 9099
      to_port     = 9099
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # HTTPS
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # HTTP
      from_port   = 8080
      to_port     = 8089
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      # MySQL
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr_block]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = [var.vpc_cidr_block]
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = -1
      to_port     = -1
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}



/*resource "aws_security_group" "ssh_access" {
  name = "ssh_access"
  description = "Allows ssh inbound to vpc"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack}-bastion_ssh"
  }

}

resource "aws_security_group" "alb_sg" {
  name = "alb_sg"
  description = "Application Load Balancer sec group"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack}-alb"
  }

}

resource aws_security_group "mysql" {
  name        = "mysql"
  description = "Sec group for db servers"
  vpc_id      = module.vpc.vpc_id

  ingress {
    protocol        = "tcp"
    from_port       = 3306
    to_port         = 3306
    security_groups = [aws_security_group.cluster_nodes.id]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack}-mysql"
  }

}

resource "aws_security_group" "cluster_nodes" {
  name = "cluster_nodes"
  description = "Security group for all nodes"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [var.vpc_cidr_block]
  }

  tags = {
    Name = "${var.stack}-cluster_ssh"
  }
}

resource "aws_security_group" "master_nodes" {
  name = "master_nodes"
  description = "Security group for master nodes"
  vpc_id = module.vpc.vpc_id

  ingress {
    # Kubernetes API Server
    from_port = 6443
    to_port   = 6443
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Kubelet API
    from_port = 10250
    to_port   = 10250
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Kube-scheduler
    from_port = 10259
    to_port   = 10259
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Kube-controller-mgr
    from_port = 10257
    to_port   = 10257
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # etcd server client API
    from_port = 2379
    to_port   = 2380
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # HTTP
    from_port   = 8080
    to_port     = 8089
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # BGP Peering
    from_port   = 179
    to_port     = 179
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Calico Node to Node
    from_port   = 5473
    to_port     = 5473
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Calico Felix
    from_port   = 9099
    to_port     = 9099
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # HTTPS
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }


  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack}-master_nodes"
  }
}

resource "aws_security_group" "worker_nodes" {
  name        = "worker_nodes"
  description = "Security group for worker nodes"
  vpc_id      = module.vpc.vpc_id

  ingress {
    # Kubelet API
    from_port   = 10250
    to_port     = 10250
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # NodePort Services†
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # HTTP
    from_port   = 8080
    to_port     = 8089
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # HTTPS
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # BGP Peering
    from_port   = 179
    to_port     = 179
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Calico Node to Node
    from_port   = 5473
    to_port     = 5473
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  ingress {
    # Calico Felix
    from_port   = 9099
    to_port     = 9099
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.stack}-worker_nodes"
  }
}
*/