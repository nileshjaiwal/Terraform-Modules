module "ec2_instance" {
  source                 = "../modules/terraform-aws-linux-ec2/"
  imageId                  = var.imageId
  instanceType           = var.instanceType
  subnetId               = var.subnetId
  vpc_security_group_id  = [module.security_group.vpc_security_group_id]
  depends_on             = [module.security_group]
  tags                   = var.tags
}
module "security_group" {
  source              = "../modules/terraform-aws-security-group/"
  security_group_name = var.security_group_name
  vpc_id              = var.vpc_id
  tags                = var.tags
  ingress             = var.ingress
  egress              = var.egress
}
