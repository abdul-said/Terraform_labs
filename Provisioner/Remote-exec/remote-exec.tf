resource "aws_instance" "myec2" {
   ami = "ami-05ea2888c91c97ca7"
   instance_type = "t2.micro"
   key_name = "terraform-key"
   vpc_security_group_ids = ["sg-02e4b1553e33de427"]

 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key  = file("./terraform-key.pem")
    host     = self.public_ip
  }

 provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}


#ami-05ea2888c91c97ca7 sg-02e4b1553e33de427