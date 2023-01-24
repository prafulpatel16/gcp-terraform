/*
output "subnetwork" {
  description = "ID of the vpc"
  value       = module.networking.subnetwork
}
*/
output "vpc" {
    value = module.network.vpc
}

output "subnetwork" {
   # value = "${google_compute_subnetwork.subnetwork.name}"
    value = module.network.subnetwork
}
