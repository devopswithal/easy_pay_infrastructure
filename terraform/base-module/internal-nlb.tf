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


