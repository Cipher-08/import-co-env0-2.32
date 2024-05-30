# Retrieve the JSON key variable from env0
variable "key" {
  type = string
  description = "The JSON key containing GCP credentials"
}

# Decode the JSON key variable
locals {
  credentials = jsondecode(var.key)
}

# Use the decoded credentials in the provider configuration
provider "google" {
  project     = "content-gen-418510"
  region      = "asia-southeast1"
  credentials = file("key.json")
}

# Save the JSON key to a file (key.json) for use in the provider
resource "local_file" "credentials_file" {
  content  = var.key
  filename = "${path.module}/key.json"
}

