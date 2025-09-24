resource "aws_vpc" "datacenter_vpc" {
  # A VPC requires a primary IPv4 CIDR block. 
  # We'll use a common private range.
  cidr_block = "10.0.0.0/16"

  # This enables the Amazon-provided IPv6 CIDR block
  assign_generated_ipv6_cidr_block = true

  # Set the name tag for easy identification in the AWS console
  tags = {
    Name = "datacenter-vpc"
  }
}
