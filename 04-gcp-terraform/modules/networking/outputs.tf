output "vpc" {
    value = google_compute_network.vpc.id
}

output "subnet" {
    value = google_compute_subnetwork.subnet.*.name
}

