resource "google_compute_firewall" "allow-http" {
    name = "allow-http"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["80"]
        }
   target_tags = ["allow-http"]      
}


resource "google_compute_firewall" "allow-http8080" {
    name = "allow-http8080"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["8080"]
        }
   target_tags = ["allow-http8080"]      
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
