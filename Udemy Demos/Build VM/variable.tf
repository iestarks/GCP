variable "image" { default = "ubuntu-1804-lts"}

//variable "machine_type" { 
    //type = map
   // default = {
    //    dev = "n1-standard-1"
     //   prod = "Production-wont-work"
     //   }


variable "name_count" {default = ["udemy1", "udemy2", "udemy3"]}
variable "machine_count" { default = "1"}
variable "environment" { default = "production"}
variable "machine_type" { default = "n1-standard-1"}
variable "machine_type_dev" { default = "n1-standard-2"}
