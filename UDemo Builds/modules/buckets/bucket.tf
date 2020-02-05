

module "Bucket" {
    source = "../../Bucket"
}

terraform {
    required_providers {
        google = "2.7.0"
    }
}