variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project/Lambda name"
  type        = string
  default     = "gitlab-lambda"
}

variable "env" {
  description = "Environment (dev, prod, etc.)"
  type        = string
  default     = "dev"
}
