resource "google_storage_bucket" "bucket" {
    count = 1
    name = var.bucket-name
    location = var.location
    storage_class = var.storage
    force_destroy = true

    labels = {
     name = var.bucket-name
    location = var.location
    }

    versioning{
        enabled = false
    }

}

