// Configure the Google Cloud provider
provider "google" {
 #credentials = "${file("CREDENTIALS_FILE.json")}"
 project     = "azuredevops-2020"
 region      = "us-east1"
}