output "vpc_security_group_id" {
  value       = aws_security_group.security_group.id
  description = "IDs on the AWS Security Groups associated with the instance."
}