resource "google_compute_instance" "default" {
  count = "${length(var.name_count)}"

  name         = "udemy-vm-${count.index+1}"
  machine_type = "${var.machine_type}"
  zone         = "us-east1-b"

  tags = ["name", "udemy-demo"]

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  // Local SSD disk
  //scratch_disk {
   // interface = "SCSI"
  //}


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    name = "udemy_demo"
  }

  //metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

output "name" { value = "${google_compute_instance.default.*.name}"}