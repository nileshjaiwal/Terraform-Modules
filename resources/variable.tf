
variable "tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}

variable "security_group_name" {
  type        = string
  description = "Security group name"
}

variable "type" {
  description = "CIDR block for the route table"
  type        = string
  default     = ""
}
variable "vpc_id" {
  type        = string
  description = "A mapping of tags to assign to the resource"
}
variable "ingress" {
  type        = list(any)
  description = "security rule for incoming traffic"
}
variable "egress" {
  type        = list(any)
  description = "security rule for outgoing traffic"
}
variable "imageId" {
  type = string
  description = "ID of the AMI used"
}

variable "instanceType" {
  description = "Type of the instance"
  type        = string
}

variable "subnetId" {
  type = string
  description = "The VPC Subnet ID to launch in"
}