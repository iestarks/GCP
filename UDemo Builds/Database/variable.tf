variable "name" { default =  "gcp_database" } 

variable "tier" { default =  "db-f1-micro" } 

variable "disk_size" { default =  "20" } 

variable "user_host" { default =  "%" } 
variable "db_region" { default =  "us-east1" } 

variable "database_version" { default =  "MYSQL_5_7" } 

variable "user_name" { default =  "admin" } 
variable "user_password" { default =  "password" } 
variable "replication_type" { default =  "SYNCHRONOUS" } 
variable "activation_policy" { default =  "always" } 