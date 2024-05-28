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
   access_key = "access key"
   secret_key = "secret access key"
}
resource "aws_iam_user" "dev" {
  name = "dev" 
}
resource "aws_s3_bucket" "devbucket" {
  bucket = "devbucket"
  depends_on = [aws_iam_user.dev] # This policy depends on the IAM user being created first
}
