resource "aws_instance" "frontend" {
  ami           = lookup(var.image_id,var.aws_region)
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name = aws_key_pair.login_key.key_name
  vpc_security_group_ids = [var.sg_id]
  # security_groups = [var.sg_id]
  count = 3
  tags = {
    Env = element(var.tags,count.index)
  }

}

resource "aws_key_pair" "login_key" {
  key_name = "devopskey"
  public_key = file("${path.module}/key.pub")
}