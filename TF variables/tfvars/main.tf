resource "aws_instance" "production" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  count = var.instance_count
  tags = {
    Name = var.tags
  }
}
