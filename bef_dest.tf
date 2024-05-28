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

resource "aws_instance" "prod" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  #availability_zone = "ap-south-1b"
  tags = {
    Name = "prod1"
  }
  lifecycle {
    create_before_destroy = true
  }
}