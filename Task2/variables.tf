variable "ssh_key" {
  description = "Name of the SSH key pair to be used for EC2 instances"
  type        = string
}
variable "ssh_key_name" {
  description = "Public SSH key for EC2 instance"
  type        = string
}
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
}
variable "vpc_name" {
  description = "vpc name for resources"
  type        = string
}
variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}
variable "project_name" {
  description = "Project Name"
  type        = string
}