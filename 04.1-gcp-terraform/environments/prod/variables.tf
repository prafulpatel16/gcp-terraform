
variable "regions" {
  type = list(string)
  description= "The regions where subnets should be created"
}

variable "subnet_size" {
    type = number
}

variable "cidr_range" {
  description = "The range of IP addresses for this VPC"
}