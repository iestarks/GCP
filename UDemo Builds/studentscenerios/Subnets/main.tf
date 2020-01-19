resource "google_compute_network"  "Demo-subnet" {
    name = "demo-subnet"
    auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "network" {
    name = "demo-10-1-0-0-network"
    ip_cidr_range = "10.1.0.0/16"
    region = "us-east1"
    network =  google_compute_network.Demo-subnet.self_link
}






