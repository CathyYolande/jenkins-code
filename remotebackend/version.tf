terraform {
  backend "s3" {
    bucket = "noella-terraform-state"
    key    = "Dev/dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.63.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "default"

}