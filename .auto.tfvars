### EC2 Variables ###

aws_region = "sa-east-1"
image_id = {
   "us-east-1" = "ami-08e4e35cccc6189f4" # N.Virginia
   "sa-east-1" = "ami-0420311e572d1298d" # Sao Paulo
   "ca-central-1" = "ami-0cd73cc497a2d6e69" # Canada
}
instance_type = "t2.nano"
subnet_id = "subnet-0cd24d202b4d3c485"

### SG Variables ###
name = "Terraform_SG_test"
vpc = "vpc-0be6b7eaeaa9c8c72"

### S3 Variables ###

bucket_names = [
    "academy-terraform-123-prod",
    "academy-terraform-123-qa",
    "academy-terraform-123-dev"
]

tags = [
    "Production",
    "Staging",
    "Development"
]
