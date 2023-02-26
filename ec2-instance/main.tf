resource "aws_subnet" "example" {
  vpc_id     = vpc-0b097c09de2c10c10
  cidr_block = "172.31.0.0/24"
}


resource "aws_instance" "exampleusingVPC" {
  ami                    = "ami-024fc608af8f886bc"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.example.id
  vpc_security_group_ids = ["sg-077fcd7a53e5cd890"]
  key_name               = "Keypair"
  tags = {
    Name        = "example-instance"
    Environment = "dev"
  }
}
