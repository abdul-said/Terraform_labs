provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-07c1b39b7b3d2525d" 
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}