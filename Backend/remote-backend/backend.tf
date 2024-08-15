
terraform {
  backend "s3" {
    bucket = "terraform-backend-abdul"
    key    = "network/terraform.tfstate"
    region = "eu-west-2"
  }
}
