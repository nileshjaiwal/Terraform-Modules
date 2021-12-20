resource "aws_instance" "ec2_instance" {
  ami                         = var.imageId
  instance_type               = var.instanceType
  associate_public_ip_address = true
  subnet_id                   = var.subnetId
  vpc_security_group_ids      = var.vpc_security_group_id
  disable_api_termination     = false
  tags                        = var.tags
}
