variable "imageId" {
  type = string
  description = "ID of the AMI used"
}
variable "instanceType" {
  type        = string
  description = "Type of the instance"
}
variable "subnetId" {
  type = string
  description = "The VPC Subnet ID to launch in"
}
variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {}
}
variable "vpc_security_group_id" {
   type = list
   description = "A list of security group IDs to associate with"
}