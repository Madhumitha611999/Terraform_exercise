resource "aws_vpc" "example" {
  cidr_block = "172.31.0.0/16" # Replace this with your desired VPC CIDR block

  tags = {
    Name = "Example-VPC"
  }
}
