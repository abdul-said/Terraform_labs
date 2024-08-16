
terraform {
  backend "s3" {
    bucket = "terraform-backend-abdul"
    key    = "network/eip.tfstate"
    region = "eu-west-2"
  }
}
