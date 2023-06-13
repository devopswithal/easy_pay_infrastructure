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




