
resource "aws_instance" "myec2" {
  ami           = "ami-07c1b39b7b3d2525d"
  instance_type = "t2.micro"

  provisioner "local-exec" {

    command = "echo ${self.public_ip} >> server_ip.txt"

  }

}
