provider "aws" {
  region     = var.aws_region
  # access_key = var.access_key
  # secret_key = var.secret_key
}


resource "aws_instance" "frontend" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [aws_security_group.frontend_sg.id]

  depends_on = [aws_security_group.frontend_sg]
}

resource "aws_security_group" "frontend_sg" {
  name = var.name
  description = "My Fisrt Security Group in Terraform"
  vpc_id = var.vpc
  
  ingress {
    description = "HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}