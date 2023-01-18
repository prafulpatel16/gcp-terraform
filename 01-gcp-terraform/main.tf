module "cloud_run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "~> 0.2.0"

  # Required variables
  service_name           = "my-app"
  project_id             = "using-terraf-xxx-xxxxxxxx"
  location               = "us-central1"
  image                  = "gcr.io/cloudrun/hello"
  members                = ["allUsers"]
}