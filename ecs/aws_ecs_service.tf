resource "aws_ecs_service" "practice_ecs_service" {
  name            = "practice-service"
  cluster         = aws_ecs_cluster.practice_cluster.id
  task_definition = aws_ecs_task_definition.practice_task_definition.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = [var.SUB_NET_01, var.SUB_NET_02]
    assign_public_ip = true
    security_groups  = [aws_security_group.practice_security_group.id]
  }
}
