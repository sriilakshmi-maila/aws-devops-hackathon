
# Security group for the management EC2 instance
resource "aws_security_group" "management" {
  name        = "${var.project_name}-management-sg"
  description = "Security group for the management server"
  vpc_id      = aws_vpc.main.id

  # Allow SSH only from an IP address specified in variables
  ingress {
    description = "SSH access from trusted IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  # Allow outbound connections
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-management-sg"
  }
}
