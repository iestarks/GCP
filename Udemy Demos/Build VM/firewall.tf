resource "google_compute_firewall" "allow_http" {
    name = "allow-http"
    network = "default"

    allow {
        protocol = "tcp"
        port = "80"
        }
   target_tags = ["allow-http"]      
}

resource "google_compute_firewall" "allow_https" {
    name = "allow-https"
    network = "default"

    allow {
        protocol = "tcp"
        port = "8080"
        }
   target_tags = ["allow-https"]      
}
