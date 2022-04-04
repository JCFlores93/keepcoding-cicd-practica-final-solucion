terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket  = "cicd-terraform-state-keepcoding"
    region  = "eu-west-3"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-west-3"
}
