terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
   access_key = "Access key"
   secret_key = "Secretaccess key"
}

provider "aws" {
  region  = "ap-south-1"
   access_key = "Access key"
   secret_key = "Secretaccess key"
   alias = "devops"
}

resource "aws_vpc" "vpc-1" {
    cidr_block = "10.0.0.0/16" #655356
    tags = {
        Name = "vpc_1"
    }
}

resource "aws_vpc" "vpc-2" {
    cidr_block = "12.0.0.0/16"
    provider = aws.devops
    tags = {
        Name = "vpc_2"
    }
}
