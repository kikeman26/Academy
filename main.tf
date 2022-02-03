/*  Archivo Main

En este archivo identificado como main.tf, 
Es donde vamos a declarar nuestros Terraform Providers,
recursos a crear o las llamadas a los diferentes modulos.

Este archivo especificara que es lo que vamos a desplegar
en el o los providers.

*/


provider "aws" {
  region     = var.aws_region
}


resource "aws_instance" "frontend" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [aws_security_group.frontend_sg.id]
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