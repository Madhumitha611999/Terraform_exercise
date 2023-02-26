resource "aws_vpc" "example_" {
  cidr_block = "10.0.0.0/16" # Replace this with your desired VPC CIDR block
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.example_.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_security_group" "example" {
  name_prefix = "example"
  #vpc_id      = vpc-0b097c09de2c10c10
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

}



resource "aws_instance" "exampleusingVPC" {
  ami                    = "ami-024fc608af8f886bc"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.example.id
  vpc_security_group_ids = [aws_security_group.example.id]
  key_name               = "Keypair"
  tags = {
    Name        = "example-instance"
    Environment = "dev"
  }
}
