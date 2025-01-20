resource "aws_instance" "production" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  user_data = file("apache-install.sh")
  tags = {
 Name =var.tags
}
}
