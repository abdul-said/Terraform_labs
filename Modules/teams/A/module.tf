module "ec2" {
    source = "../../modules/ec2"
    instance_type = "t2.micro"
    ami = "ami-07325431fa2186a03"
}
/* the module has not been hard coded, it has variables so when using
the module we must configure our own values*/

resource "aws_eip" "lb" {
  instance = module.ec2.instance_id
  domain   = "vpc"
}

# MODULE.MODULE-NAME.OUTPUT - this is how to configure the output of a module

