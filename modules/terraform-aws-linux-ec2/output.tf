output "public_ip" {
  description = "Public IP of instance"
  value = aws_instance.ec2_instance.public_ip
}
output "private_ip" {
  description = "Private IP of instance"
  value       = aws_instance.ec2_instance.private_ip
}


