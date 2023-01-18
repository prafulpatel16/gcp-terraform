///Create a google_compute_network resource called vpc with the following parameters:

resource "google_compute_network" "vpc" {
  name                    = "${var.environment}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  count         = length(var.regions)
  name          = "${var.environment}-subnet-${var.regions[count.index]}"
  region        = var.regions[count.index]
  network       = google_compute_network.vpc.name
  ip_cidr_range = cidrsubnet(var.cidr_range, local.newbits, count.index)
}

