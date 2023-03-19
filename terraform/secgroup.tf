resource "aws_security_group" "ssh_access" {
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
}

resource "aws_security_group" "alb_sg" {
  name = "alb_sg"
  description = "Application Load Balancer sec group"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8080
    to_port   = 8089
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
}

resource "aws_security_group" "cluster_nodes" {
  name = "cluster_nodes"
  description = "Security group for all nodes"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
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
    cidr_blocks = [var.vpc_cidr]
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
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    # Kubelet API
    from_port = 10250
    to_port   = 10250
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    # Kube-scheduler
    from_port = 10259
    to_port   = 10259
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    # Kube-controller-mgr
    from_port = 10257
    to_port   = 10257
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    # etcd server client API
    from_port = 2379
    to_port   = 2380
    protocol  = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
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
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    # NodePort Services†
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
