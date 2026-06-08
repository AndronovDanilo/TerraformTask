variable "vpc_name" {
  description = "Name of the VPC to be created"
  type        = string
}
variable "aws_region" {
    description = "AWS region where the resources will be created"
    type        = string
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "subnet1_name" {
  description = "Name of the first subnet to be created"
  type        = string
}
variable "subnet1_cidr" {
  description = "CIDR block for the first subnet"
  type        = string
}
variable "availability_zone1" {
  description = "Availability Zone for the first subnet"
  type        = string
}
variable "subnet2_name" {
  description = "Name of the second subnet to be created"
  type        = string
}
variable "subnet2_cidr" {
  description = "CIDR block for the second subnet"
  type        = string
}
variable "availability_zone2" {
  description = "Availability Zone for the second subnet"
  type        = string
}
variable "subnet3_name" {
  description = "Name of the third subnet to be created"
  type        = string
}
variable "subnet3_cidr" {
  description = "CIDR block for the third subnet"
  type        = string
}
variable "availability_zone3" {
  description = "Availability Zone for the third subnet"
  type        = string
}
variable "igw_name" {
  description = "Name of the Internet Gateway to be created"
  type        = string
}

variable "route_table_name" {
  description = "Name of the Route Table to be created"
  type        = string
}
