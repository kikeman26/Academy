resource "aws_instance" "frontend" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.sg_id]
}