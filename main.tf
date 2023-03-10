# configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "programmer-Tee"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "teseseko-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "programmer-Tee"
  }
}
