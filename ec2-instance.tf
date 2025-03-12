provider "aws" {
   region     = "ap-south-1"
   #shared_credentials_files = ["/Users/rajesh.cv.kumar/.aws/credentials"]
}

resource "aws_instance" "ec2_example" {
   ami           = "ami-03b8adbf322415fd0"
   instance_type =  "t2.micro"
   count = 2
   tags = {
           Name = "Terraform EC2"
   }
}
