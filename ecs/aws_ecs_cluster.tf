resource "aws_ecs_cluster" "practice_cluster" {
  name = "practice"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_cluster_capacity_providers" "practice_cluster_capactity_provider" {
  cluster_name = aws_ecs_cluster.practice_cluster.name

  capacity_providers = ["FARGATE"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 100
    capacity_provider = "FARGATE"
  }
}
