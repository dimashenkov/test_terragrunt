terraform {
  backend "s3" {
    bucket = "mitko-backend"
    key    = "./terraform-stage.tfstate"
    region = "us-east-2"
  }
}
