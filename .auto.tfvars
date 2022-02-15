### EC2 Variables ###

aws_region = "us-east-1"
image_id = {
   "us-east-1" = "ami-08e4e35cccc6189f4" # N.Virginiaa
   "sa-east-1" = "ami-0420311e572d1298d" # Sao Pauloo
   "ca-central-1" = "ami-0cd73cc497a2d6e69" # Canadaa
}
instance_type = "t2.nano"
subnet_id = "subnet-0cd24d202b4d3c485"

### SG Variables ###
name = "Terraform_SG_test_1"
vpc = "vpc-0be6b7eaeaa9c8c72"

### S3 Variables ###

bucket_names = [
    "academy-terraform-1234-prod",
    "academy-terraform-1234-qa",
    "academy-terraform-1234-dev",
    "academy-terraform-12345-test",
    "academy-terraform-1234-test"
]

/*
bucket_names = {
    "academy-terraform-12345-test"  = "public-read-write"
    "academy-terraform-1234-test"   = "public-read-write"
    "academy-terraform-1234-prod"   = "private" 
    "academy-terraform-1234-qa"     = "public-read"
    "academy-terraform-1234-dev"    = "private"
}
*/
tags = [
    "Production",
    "Staging",
    "Development"
]
