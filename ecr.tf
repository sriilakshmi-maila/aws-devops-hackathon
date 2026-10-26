resource "aws_ecr_repository" "app" {
  name                 = "${var.project_name}-ecommerce"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name    = "${var.project_name}-ecommerce"
    Project = var.project_name
  }
}

# Display the ECR repository URL
output "ecr_repository_url" {
  description = "URL for storing Docker images"
  value       = aws_ecr_repository.app.repository_url
}
