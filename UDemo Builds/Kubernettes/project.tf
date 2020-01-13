//variable = "path" {default = "/Users/irvs/terraform/googlecloud/secretkeys"}

provider "google" {
 project = "terraform-gcp-255501"
 region =  "us-east1-b"
 credentials = file ("/Users/irvs/terraform/googlecloud/GCP-Terraform-Resources/Udemy Demos/Build VM/secretkeys/secret-255501.json")
}

provider "google-beta" {
 project = "terraform-gcp-255501"
 region =  "us-east1-b"
 credentials = file ("/Users/irvs/terraform/googlecloud/GCP-Terraform-Resources/Udemy Demos/Build VM/secretkeys/secret-255501.json")
}


