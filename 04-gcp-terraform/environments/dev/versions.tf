terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.49.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.3.0"
    }
  }
}
