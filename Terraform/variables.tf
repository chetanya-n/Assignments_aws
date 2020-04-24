variable "access_key" {
	default = ""
}
variable "secret_key" {
	default = ""
}
variable "region" {
  default = "us-east-2"
}
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the public subnet"
  default = "10.0.0.0/24"
}
variable "cidr_subnet_private" {
  description = "CIDR block for the private subnet"
  default = "10.0.1.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "us-east-2a"
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-0cf31d971a3ca20d6"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "ASSIGNMENT"
}
