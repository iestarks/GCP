//variable = "path" {default = "/Users/irvs/terraform/googlecloud/secretkeys"}

provider "google" {
 project = "terraform-gcp-255501"
 region =  "us-east1-a"
 credentials = "${file ("/Users/irvs/terraform/googlecloud/secretkeys/secret-255501.json")}"
}

