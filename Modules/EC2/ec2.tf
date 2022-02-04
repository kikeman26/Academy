resource "aws_instance" "frontend" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
}