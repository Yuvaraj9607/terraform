terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-08e4b984abde34a4f"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleWebServerInstance"
  }
}
