resource "aws_security_group" "example" {
  name_prefix = "example"
  #vpc_id      = vpc-0b097c09de2c10c10
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  tags = {
    Name = "Example-SG"
  }
}
