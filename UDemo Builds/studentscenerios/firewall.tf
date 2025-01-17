resource "google_compute_firewall" "allow-ssh" {
    name = "allow-ssh"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["22"]
        }
   target_tags = ["allow-ssh"]      
}


resource "google_compute_firewall" "allow-http" {
    name = "allow-http"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["80"]
        }
   target_tags = ["allow-http"]      
}

resource "google_compute_firewall" "allow-https" {
    name = "allow-https"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["443"]
        }
   target_tags = ["allow-https"]      
}
