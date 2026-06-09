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
variable "VpcId" {
  description = "VPC ID"
  type        = string
}
variable "SecurityGroupId" {
  description = "Security Group ID"
  type        = string
}
variable "ProjectId" {
  description = "Project ID"
  type        = string
}