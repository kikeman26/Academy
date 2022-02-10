/*  Archivo Main

En este archivo identificado como main.tf, 
Es donde vamos a declarar nuestros Terraform Providers,
recursos a crear o las llamadas a los diferentes modulos.

Este archivo especificara que es lo que vamos a desplegar
en el o los providers.

*/
terraform {
  backend "s3" {
    bucket = "terraform-academy"
    key    = "terraform/states/project_a/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = var.aws_region
  skip_credentials_validation     = true
  skip_region_validation          = true
}

## AWS Modules 
module "ec2" {
  source = ".//Modules/EC2"
  aws_region    = var.aws_region
  image_id      = var.image_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  sg_id         = module.sg.frontend_sg_id
  tags          = var.tags
}

module "sg" {
  source = ".//Modules/SG"
  name = var.name
  vpc = var.vpc
}

module "s3" {
  source = ".//Modules/S3"
  bucket_names = var.bucket_names
}
