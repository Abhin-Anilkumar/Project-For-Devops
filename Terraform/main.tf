provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  env                 = var.env
}

module "key-pair" {
  source = "./modules/key-pair"

  key_name         = var.key_name
  private_key_path = var.private_key_path
}

module "ec2" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = module.vpc.public_subnet_id
  key_name      = module.key-pair.key_name
  env           = var.env
}
