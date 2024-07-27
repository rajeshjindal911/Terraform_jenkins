provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "master_ec2" {
  ami           = "ami-0249211c9916306f8"
  instance_type = "t3.micro"
  tags = {
    Name = "master_ec2"
  }
}
