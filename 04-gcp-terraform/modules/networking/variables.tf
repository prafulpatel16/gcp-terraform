variable "environment" {
    description = "The stage of workloads that will be deployed to this network"
    type = string
   
}

variable "cidr_range" {
  description = "The range of IP addresses for this VPC"
  
}

variable "regions" {
  type = list(string)
  description= "The regions where subnets should be created"
}

variable "subnet_size" {
    type = number
}

locals {
    split_cidr = split("/", var.cidr_range )
    cidr_size = element(local.split_cidr, length(local.split_cidr)-1)
    newbits = var.subnet_size - tonumber(local.cidr_size)
}

