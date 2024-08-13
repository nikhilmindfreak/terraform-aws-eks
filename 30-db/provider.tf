terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.58.0" #version changed
    }
  }
  backend "s3" {
    bucket = "devopsme-remote-state"
    key    = "expense-dev-db"
    region = "us-east-1"
    dynamodb_table = "devopsme-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}