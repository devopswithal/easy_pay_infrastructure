resource "aws_lb" "ep_cap_lb" {
  name               = "ep_cap_lb"
  internal           = false
  load_balancer_type = "network"
  subnets            = module.vpc.public_subnets

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}

resource "aws_lb_target_group" "cluster_instances_tg" {
  name = "cluster_instances_tg"
  port = 31000
  protocol = "TCP"
  vpc_id = module.vpc.vpc_id
  target_type = "ip"

  health_check {
    port      = 31000
    protocol  = "TCP"
    interval  = 30
    healthy_threshold = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "cluster_lb_listener" {
  load_balancer_arn = aws_lb.ep_cap_lb.arn
  port = 80
  protocol = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.cluster_instances_tg.id
    type = "forward"
  }
}

resource "aws_lb_target_group_attachment" "master_lb_attach" {
  target_group_arn = aws_lb_target_group.cluster_instances_tg.arn
  target_id        = aws_instance.master_nodes.*.private_ip[count.index]
  port             = 31000
}

resource "aws_lb_target_group_attachment" "worker_lb_attach" {
  target_group_arn = aws_lb_target_group.cluster_instances_tg.arn
  target_id        = aws_instance.worker_nodes.*.private_ip[count.index]
  port             = 31000
}