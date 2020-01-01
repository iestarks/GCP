resource "google_compute_instance" "default" {
  #count = length(var.machine_count)
  count = "1"
  name = "udemy-vm-${count.index+1}"
    machine_type = var.machine_type == "production" ? var.machine_type : var.machine_type_dev
  zone = "us-east1-b"
  can_ip_forward = "false"
  description = "This is Irvs test VM"

  tags = ["allow-http", "allow-https"] ## Firewall rules

  #tags = ["name", "udemy-demo"]

  boot_disk {
    initialize_params {
      image = var.image
      size = 20
    }
  }

labels = {

  name = "udemy-vm-${count.index+1}"

  machine_type = var.machine_type == "production" ? var.machine_type : var.machine_type_dev
}

  network_interface {
    network = "default"
  }

metadata = {
  size = "20"
  foo = "bar"
}

metadata_startup_script = "echo Irving > /hello.txt"


  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
resource "google_compute_disk" "default" {
  name = "udemy-disk"
  type = "pd-ssd"
  zone = "us-east1-b"
  size = "10"

}

resource "google_compute_attached_disk" "default" {
  disk = google_compute_disk.default.self_link
  instance = google_compute_instance.default[0].self_link
}

output "name" { value = "${google_compute_instance.default.*.name}"}

output "instance_id" { value = join(",", google_compute_instance.default.*.id)}