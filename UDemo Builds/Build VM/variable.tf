variable "image" { default = "ubuntu-1804-lts"}

variable "image2" { default = "rhel-6-v20191210"}

#####got rid of it to allow more control of what type of machine is provisioned.
# variable "machine_type" { 
    #type = map
   # default = {
    #    dev = "n1-standard-1"
     #   prod = "Production-wont-work"
    # }

variable "zone" { default = "us-east1-a"}
variable "name_count" {default = ["udemy1", "udemy2", "udemy3"]}
variable "machine_count" { default = "1"}
variable "environment" { default = "production"}
<<<<<<< HEAD
variable "environment_dev" { default = "Development"}
=======
variable "dev_environment" { default = "Development"}
>>>>>>> f2083be3aa5f69f179d728281723957a216e02e2
variable "machine_type" { default = "n1-standard-1"}
variable "machine_type_dev" { default = "n1-standard-2"}


