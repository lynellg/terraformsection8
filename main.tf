resource "google_cloud_run_v2_job" "cloudrun_from_tf" {
  name     = "cloudrun-from-tf"
  location = "us-central1"

  template {
    template {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }
}