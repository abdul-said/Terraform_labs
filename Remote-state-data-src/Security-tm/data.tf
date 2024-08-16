data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terraform-backend-abdul"
    key    = "network/eip.tfstate"
    region = "eu-west-2"
    }
  }
