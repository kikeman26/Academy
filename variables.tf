/*  Archivo de Variables

En este archivo identificado como variables.tf,
organizaremos nuestras variables a usar en nuestra configuracion main, es decir, pasaremos
los parametros a tomar en cuentapara la creacion de infraestuctura

*/

variable "aws_region" {
  type    = string
  # default = "us-east-1"
}

variable "image_id" {
  type    = map
  # default = "ami-08e4e35cccc6189f4"
}

variable "instance_type" {
  type = string
  # default = "t2.nano"
}

variable "subnet_id" {
  type    = string
  # default = "subnet-0cd24d202b4d3c485"
}

variable "name" {
  type = string
  # default = "Terraform_SG_test"
}

variable "vpc" {
  type = string
  # default = "vpc-0be6b7eaeaa9c8c72"
}

variable "bucket_names" {
  type = list
}

variable "tags" {
  type = list
}
