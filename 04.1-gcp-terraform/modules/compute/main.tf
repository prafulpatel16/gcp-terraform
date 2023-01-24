///Create a google_compute_network resource called vpc with the following parameters:
/*
resource "google_service_account" "default" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}
*/

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = var.machine_type
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "dev"
        type  = "pd-ssd"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
   # network = module.google_compute_network.vpc.id
#  subnetwork = "${module.networking.subnetwork}"
   subnetwork =  var.subnetwork

    access_config {
      // Ephemeral public IP
    }
  }

}


