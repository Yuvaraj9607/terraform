#variable file for ec2
variable "region" {
  description = "Cloud region in which instance to be launched"
  type = string
  default = "us-east-1"
}
variable "access_key" {
  description = "accesskey to connect the instance as an IAM user"
  type = string
  default = "access key"
}
variable "secret_key" {
  description = "secret key to connect the instance as an IAM user"
  type = string
  default = "secret access key"
}
variable "ami" {
  description = "ami id for an instance"
  type = string
  default = "ami-043a5a82b6cf98947"
}
variable "instance_type" {
  description = "type of the instance"
  type = string
  default = "t2.micro"
}
variable "availability_zone" {
  description = "Which subnet instance to be create"
  type = string
  default = "us-east-1a"
}
variable "tags" {
    description = "Name of the instance"
    type = string
    default = "Production"
} 
