resource "google_storage_bucket" "import-env0" {
  name          = "bucket-not-made-using-terraform-env0"
  location      = "US"
  force_destroy = true

}
