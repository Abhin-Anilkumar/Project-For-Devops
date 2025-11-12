variable "instance_type" {
  description = "The type of the EC2 instance."
  type        = string
}

variable "ami" {
  description = "The AMI to use for the EC2 instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in."
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
}

variable "env" {
  description = "The environment name for tagging."
  type        = string
}
