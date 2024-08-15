provider "aws" {
    region = "eu-west-2"
}

variable "environment" {
    default = "development"
}

resource "aws_instance" "ec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = var.environment == "development" ? "t2.micro" : "m5.large"
}

# this conditional expression states that if the variable for the instance type is in the development stage then it will create a t2.micro instance type and if the condition isnt met it will create the latter