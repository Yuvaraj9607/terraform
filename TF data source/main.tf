variable "vpc_id" {
  default = "vpc-002d7e3bac95e10c2"
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_subnet" "pubsub" {
  vpc_id = data.aws_vpc.selected.id
  availability_zone = "ap-south-1a"
  cidr_block = "172.31.16.0/20"
}