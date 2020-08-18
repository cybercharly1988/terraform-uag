variable "region" {
  description = "It will define the AWS region"
  default     = "us-west-2"
}
variable "http_port" {
  description = "HTTP service listen on this port"
  default     = 80
}
variable "ssh_port" {
  description = "ssh port"
  default     = 22
}
variable "my_public_ip" {
  description = "My local system public IP"
  default     = "157.131.246.187/32"
}
variable "ami" {
  description = "Amazon Machine Image - Centos 7.7x64ENG"
  default     = "ami-0a248ce88bcc7bd23"
}
variable "instance_type" {
  description = "AWS EC2 instance ype"
  default     = "t2.micro"
}
variable "key_name" {
  description = "This is the pem key created to access to the EC2 instances"
  default     = "terraform-us-west-2"
}
variable "count_ec2" {
  description = "number of instances needed to deploy"
  default     = 3
}
variable "azs" {
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}