terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
}
provider "aws" {
  region  = "ap-south-1"
   access_key = "access_key"
   secret_key = "secret_key"
}

resource "aws_s3_bucket" "example" {
  for_each = {
    dev  = "my-dev-bucket"
    test = "my-test-bucket"
    prod = "my-prod-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    Name = "${each.key}-${each.value}"
  }
}