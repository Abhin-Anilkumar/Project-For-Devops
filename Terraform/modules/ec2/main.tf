resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
   associate_public_ip_address = var.public_ip

  tags = {
    Name = "${var.env}-instance"
  }
}