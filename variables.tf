variable "aws_region" {
  description = "AWS region where the infrastructure will be provisioned."
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"
  validation {
    condition = contains(
      ["dev", "qa", "prod"], var.environment
    )
    error_message = "Environment must be one of: dev, qa, pro d."
  }
}

variable "project_name" {
  description = "terraform-practice"
  type        = string
  default     = "ecommerce-practice"
}