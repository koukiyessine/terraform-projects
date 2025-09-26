    resource "aws_iam_user" "john" {
      name = "iamuser_john"
      tags = {
        Environment = "Development"
        ManagedBy   = "Terraform"
      }
    }