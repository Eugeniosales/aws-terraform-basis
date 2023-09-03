resource "aws_ecs_service" "practice_ecs_service" {
  name            = "practice-service"
  cluster         = aws_ecs_cluster.practice_cluster.id
  task_definition = aws_ecs_task_definition.practice_task_definition.arn
  desired_count   = 3
  launch_type     = "FARGATE"

  load_balancer {
    target_group_arn = aws_lb_target_group.practice_target_group.arn
    container_name   = "practice-app"
    container_port   = 80
  }

  network_configuration {
    subnets          = [var.SUB_NET_01, var.SUB_NET_02]
    assign_public_ip = true
    security_groups  = [aws_security_group.practice_security_group.id]
  }

  depends_on = [
    aws_lb_target_group.practice_target_group
  ]
}
