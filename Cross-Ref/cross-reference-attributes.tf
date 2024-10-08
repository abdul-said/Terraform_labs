provider "aws" {
    region = "eu-west-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "attribute-sg"
  
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.lb.public_ip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

# ${} this is string interpolation, meaning terraform will replace whets inside the curly brackets with its calculated value, in this case it took thr attribute of the elastic IP
