resource "aws_ebs_volume" "devops-volume" {
  availability_zone = "us-east-1a"
  size              = 2

  tags = {
    Name = "myvolumeebs"
  }
}
