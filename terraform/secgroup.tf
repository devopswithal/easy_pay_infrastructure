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

resource "aws_security_group" "cluster_nodes" {
  name = "cluster_nodes"
  description = "Security group for all nodes"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    from_port = -1
    to_port   = -1
    protocol  = "icmp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["${var.vpc_cidr}"]
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
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    # Kubelet API
    from_port = 10250
    to_port   = 10250
    protocol  = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    # Kube-scheduler
    from_port = 10259
    to_port   = 10259
    protocol  = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    # Kube-controller-mgr
    from_port = 10257
    to_port   = 10257
    protocol  = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    # etcd server client API
    from_port = 2379
    to_port   = 2380
    protocol  = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
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
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  ingress {
    # NodePort Services†
    from_port   = 30000
    to_port     = 32767
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
