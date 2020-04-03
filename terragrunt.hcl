terraform {
    source = "github.com/dimashenkov/test_terragrunt"
  }

inputs = {
  VpcName = "dev"
  DnsZoneName = "linuxacademy.internal"
}



remote_state {
  backend = "s3"
  config = {
    bucket = "my-terraform-state-bullet"

    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}
