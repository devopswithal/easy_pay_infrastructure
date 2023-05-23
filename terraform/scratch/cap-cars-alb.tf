module "ingress_alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "ep-cap-alb"

  load_balancer_type = "application"
  enable_deletion_protection = false

  vpc_id  = module.vpc.vpc_id
  subnets = module.vpc.private_subnets
  security_groups = [module.alb_sg.security_group_id]

  /*access_logs = {
    bucket = "ep-cluster-state-store"
  }*/

  count                = length(aws_instance.worker_instance)

  target_groups = [
    {
      name_prefix      = "albtg-"
      backend_protocol = "HTTP"
      backend_port     = 8080
      target_type      = "ip"
      vpc_id = module.vpc.vpc_id
      targets = {
        worker = {
          target_id        = element(aws_instance.worker_instance.*.private_ip, count.index)
          port      = 80
        },
        worker2 = {
          target_id        = element(aws_instance.worker_instance.*.private_ip, count.index)
          port      = 8080
        }
      }
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    },
    {
      port               = 8080
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = local.common_tags
}

/*resource "aws_lb" "cap-cars-alb" {
  name               = "cap-cars-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = module.vpc.public_subnets

  enable_deletion_protection = false

  tags = {
    Environment = "dev"
  }
}

resource "aws_lb_listener" "front_end_8080" {
  load_balancer_arn = aws_lb.cap-cars-alb.arn
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front-end.arn
  }
}

resource "aws_lb_target_group" "front-end" {
  name        = "front-end"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_lb_target_group_attachment" "worker_lb_attach" {
  count            = length(aws_instance.worker_nodes)
  target_group_arn = aws_lb_target_group.front-end.arn
  target_id        = element(aws_instance.worker_nodes.*.private_ip, count.index)
  port             = 8080
}
*/
