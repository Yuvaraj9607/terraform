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
resource "aws_iam_user" "Developer" {
 for_each = toset(["devuser","produser","uatuser","testuser"])
 name = each.key
}