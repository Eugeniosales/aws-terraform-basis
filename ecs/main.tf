terraform {
  backend "s3" {
    bucket = "eugenio-practice"
    key    = "aws-terraform-basis/ecs/terraform.tfstate"
    region = "us-east-2"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Environment = var.ENV
      Project     = var.PROJECT
    }
  }
}

# terraform init -backend-config="key=aws-terraform-basis/ecs/terraform.tfstate"
# terraform plan -var-file="env/dev.tfvars"
