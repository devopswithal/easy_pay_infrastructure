resource "aws_lb" "cap-cars-alb" {
  name               = "cap-cars-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [module.vpc.public_subnets]

  enable_deletion_protection = true

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
