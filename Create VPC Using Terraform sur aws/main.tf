
resource "aws_vpc" "xfusion_vpc" {
  cidr_block           = "10.0.0.0/16"   # You can choose any valid IPv4 CIDR block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "xfusion-vpc"
  }
}
