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
   access_key = "Accesskey"
   secret_key = "Secret_accesskey"
}
resource "aws_instance" "Jenkins" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t3.large"

  tags = {
    Name = "Jenkins"
  }
}
resource "aws_key_pair" "ppk" {
  key_name   = "Nvirginia"
  public_key = "AAAAB3NzaC1yc2EAAAADAQABAAABAQCpRQAotrvkJ3R9uZ1pe0lF24xGb+9EiON0dKHeMYS3h1w6Cdx5VffftjbRcMP2wvSsCG6dn+1ss9E9UyTZDNBYXisNDI2+um5tlGHuNIXGfO6DXDBbw/dwXhm8kjDhS6Nak7MF7vLZsCIIMOyAdauH9y4Z2AMzf0VLverTePYx39j3yYBJJutnWk0lhxANO9AyReHv5x5WJMG49Sa3+sqDtK1hRQsigT2O8azaz9uP0wg14cTynB2oAJLVy8Mb51VmB6pNJkFG7fX1K90yyXGdsnURqGeTVhrqqFyydccO9nTetBu8+NEZ1EShGVapAVN78wZCeXR+qDnClrRor3yN"
}
