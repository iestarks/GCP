resource "google_compute_instance" "gcp-instance" {
    name = "gcp-instance"
    machine_type = "n1-standard-1"
    zone = "us-east1-b"

    boot_disk {

        initialize_params {
            image = "ubuntu-1804-lts"
        
        }
    }

    network_interface {
        network = "default"
    }

    service_account {
        scopes = [ "userinfo-email", "compute-ro", "storage-ro"]
    }
  
}
