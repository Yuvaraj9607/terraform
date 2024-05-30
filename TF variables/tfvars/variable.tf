variable "region" {
  description = "Cloud region in which instance to be launched"
  type = string
  default = "ap-south-1"
}
variable "access_key" {
  description = "accesskey to connect the instance as an IAM user"
  type = string
  default = "secret key"
}
variable "secret_key" {
  description = "secret key to connect the instance as an IAM user"
  type = string
  default = "secret key"
}
variable "ami" {
  description = "ami id for an instance"
  type = string
  default = "ami-08ebc9e780cde07dd"
}
variable "instance_type" {
  description = "type of the instance"
  type = string
  default = "t2.micro"
}
variable "availability_zone" {
  description = "Which subnet instance to be create"
  type = string
  default = "ap-south-1a"
}
variable "tags" {
  description = "Name of the instance"
  type = string
  default = "UAT"
}
variable "instance_count" {
  description = "Instance count"
  type = number
  default = 3
}