variable "region" {
  description = "It will define the AWS region"
  default     = "us-east-1"
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
  default     = "187.188.48.87/32"
}
variable "ami" {
  description = "Amazon Machine Image"
  default     = "ami-0a313d6098716f372"
}
variable "instance_type" {
  description = "AWS EC2 instance ype"
  default     = "t2.micro"
}
variable "key_name" {
  description = "This is the pem key created to access to the EC2 instances"
  default     = "terraform-us-east-1"
}
variable "count_ec2" {
  description = "number of instances needed to deploy"
  default     = 3
}
variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}