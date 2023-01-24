variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  #  value   =   module.networking.subnetwork
  default = ""
}
