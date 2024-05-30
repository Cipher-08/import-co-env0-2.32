resource "google_cloud_run_service" "content-gen" {
  name     = "content-gen"
  location = "us-east1"

  template {
    spec {
      containers {
        image = "gcr.io/content-gen-418510/content-gen:latest"
      }
    }
  }
}
