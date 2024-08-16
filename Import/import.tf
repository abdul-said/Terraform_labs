provider "aws" {
  region = "eu-west-2"
}

import {
    to = aws_security_group.mysg
    id = "sg-09690cdcda8d41b9d"
}