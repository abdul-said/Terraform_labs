terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
/* this is recommended because the code below may not work on all
provider pug-ins so we specify a version of code that matches the
code in the module */

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.instance_type
  
}

output "instance_id" {
    value = aws_instance.myec2.id
}

variable "ami" {}
variable "instance_type" {}


