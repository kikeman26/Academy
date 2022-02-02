output "frontend_sg_id" {
  description = "ID of the Frontend SG"
  value = aws_security_group.frontend_sg.id
}