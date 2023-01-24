module "network" {
  source      = "../../modules/networking"
  environment = "dev"
  cidr_range  = "10.10.0.0/24"
  regions     = "us-central1"
  subnet_size = 28
}


module "compute" {
  source = "../../modules/compute"
  machine_type  = "n1-standard-1"

#  subnetwork = "test-subnetwork"
#  network    = "${module.networking.vpc}"
#  subnetwork = "${module.networking.subnetwork}"
#  network    = module.networking.vpc
   subnetwork = module.network.subnetwork

}
