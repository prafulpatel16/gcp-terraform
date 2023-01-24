output "vpc" {
    value = google_compute_network.vpc.id
}

output "subnetwork" {
   # value = "${google_compute_subnetwork.subnetwork.name}"
    value = google_compute_subnetwork.subnetwork.name
}   

