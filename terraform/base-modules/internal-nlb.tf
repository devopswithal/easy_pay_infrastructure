module "control_plane_nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "ep-cap-nlb"

  load_balancer_type = "network"
  enable_deletion_protection = false

  vpc_id  = module.vpc.vpc_id
  subnets = module.vpc.private_subnets

  access_logs = {
    bucket = "ep-cluster-state-store"
  }

  target_groups = [
    {
      name_prefix      = "tg-"
      backend_protocol = "TCP"
      backend_port     = 6443
      target_type      = "ip"
      vpc_id = module.vpc.vpc_id
    }
  ]

  http_tcp_listeners = [
    {
      port               = 6443
      protocol           = "TCP"
      target_group_index = 0
    }
  ]

  tags = local.common_tags
}
/*resource "aws_lb" "ep_masters_lb" {
  name               = "ep-masters-lb"
  internal           = true
  load_balancer_type = "network"
  subnets            = module.vpc.private_subnets

  enable_deletion_protection = false

  tags = {
    Environment = "dev"
    Name = "${var.cluster_name}-master_lb"
  }
}

resource "aws_lb_target_group" "masters_tg" {
  name = "masters-tg"
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
}

resource "aws_lb_listener" "masters_lb_listener" {
  load_balancer_arn = aws_lb.ep_masters_lb.arn
  port = 6443
  protocol = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.masters_tg.id
    type = "forward"
  }
}

resource "aws_lb_target_group_attachment" "master_lb_attach" {
  count            = length(aws_instance.master_nodes)
  target_group_arn = aws_lb_target_group.masters_tg.arn
  target_id        = element(aws_instance.master_nodes.*.private_ip, count.index)
  port             = 8080
}
*/

