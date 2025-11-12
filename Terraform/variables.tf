variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "env" {
  description = "The environment name."
  type        = string
  default     = "dev"
}

variable "public_ip" {
  description = "The environment name for tagging."
  default = "true"
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-west-1"
}

variable "key_name" {
  description = "The name for the key pair."
  type        = string
  default     = "dev-key"
}

variable "private_key_path" {
  description = "The local path to save the private key."
  type        = string
  default     = "dev-key.pem"
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t2.large"
}

variable "ami" {
  description = "The AMI for the EC2 instance."
  type        = string
  default     = "ami-0e6a50b0059fd2cc3" 
}