terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Specifies a compatible version range is
    }
  }
  backend "s3" {
    bucket = "devsecops-terra-1-practise"
    key    = "devopsterra.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {

  # You might also configure authentication methods here,
  # but often these are handled by environment variables or AWS CLI configuration.
}


