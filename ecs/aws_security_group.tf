resource "aws_security_group" "practice_security_group" {
  name        = "practice-sg"
  description = "ECS Practice SG"
  vpc_id      = var.VPC_ID

  ingress {
    description = "HTTP from ALL"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
