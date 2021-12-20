variable  "security_group_name" {
  type        = string
  description = "Security group name"
}
variable "tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}
variable "vpc_id" {
  type = string
  description = "A mapping of tags to assign to the resource"
}
variable "ingress" {
  type = list
  description = "security rule for incoming traffic"
}
variable "egress" {
  type = list
  description = "security rule for outgoing traffic"
}