output "vpc_security_group_id" {
  value       = module.security_group.vpc_security_group_id
  description = "IDs on the AWS Security Groups associated with the instance."
}



