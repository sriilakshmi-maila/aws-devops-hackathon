
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "hackathon"
}

variable "vpc_cidr" {
  description = "VPC network range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "allowed_ssh_cidr" {
  description = "Your trusted public IP address in CIDR notation"
  type        = string
}
