module "instance" {
    source = "../../Build VM"
    zone = "us-east1-a"
    machine_type = "n1-standard-2 "
}


module "instance_2" {
    source = "../../Build VM"
    zone = "us-east1-b"
    machine_type = "n1-standard-2 "
}

module "Bucket" {
    source = "../../Bucket"
}