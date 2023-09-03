resource "aws_lb" "practice_lb" {
  name               = "practice-${var.ENV}-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.practice_security_group.id]
  subnets            = [var.SUB_NET_01, var.SUB_NET_02]

  ip_address_type = "ipv4"
}

resource "aws_lb_target_group" "practice_target_group" {
  name        = "practice-ecs-target-group"
  target_type = "ip"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.VPC_ID
}

resource "aws_lb_listener" "practice_lb_listener" {
  load_balancer_arn = aws_lb.practice_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.practice_target_group.arn
  }

  depends_on = [
    aws_lb.practice_lb,
    aws_lb_target_group.practice_target_group
  ]
}
