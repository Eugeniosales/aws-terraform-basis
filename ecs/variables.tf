variable "ENV" {
  type        = string
  description = "Application environment"
  default     = "dev"
}

variable "PROJECT" {
  type        = string
  description = "aws-terraform-basis"
  default     = "aws-terraform-basis"
}

variable "VPC_ID" {
  type        = string
  description = "VPC ID"
  default     = null
}

variable "SUB_NET_01" {
  type        = string
  description = "sub net a"
  default     = null
}

variable "SUB_NET_02" {
  type        = string
  description = "sub net b"
  default     = null
}

variable "TASK_IMAGE" {
  type        = string
  description = "task image"
  default     = null
}
