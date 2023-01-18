module "network" {
  source = "../modules/networking"
  environment = "prod"
  cidr_range = var.cidr_range
  regions = var.regions
  subnet_size = var.subnet_size
}