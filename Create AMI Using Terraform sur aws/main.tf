# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-f7aa82a12647c7067"
  ]

  tags = {
    Name = "devops-ec2"
  }
}