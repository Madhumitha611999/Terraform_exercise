resource "aws_instance" "example" {
  ami                    = "ami-024fc608af8f886bc"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-077fcd7a53e5cd890"]
  key_name               = "Keypair"
  tags = {
    Name        = "example-instance"
    Environment = "dev"
  }
}
