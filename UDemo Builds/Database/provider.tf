provider "google" {
 project = "terraform-gcp-255501"
 region =  "us-east1-b"
 credentials = file ("/Users/irvs/terraform/googlecloud/GCP-Terraform-Resources/UDemo Builds/Build Instance/secretkeys/secret-255501.json")
}