# GCP
Google Cloud Resource creation using Terraform.



This is a 2 branch repo

**** master
---
**** vm1_terraform
---


This file is intended for those that want to view and confirm my familiarity with the technology, in respect to deploying a VM instance in google cloud.

Things you need are as follows:
1. Terraform installed on a client
2. GCP cli SDK installed on the client.
3. Run gcloud auth login from client to authenticate with your google account.
4. Under IAM in GCP, make sure the google account as the permission set labeled " Compute admin" so that Terraform can build the VM.
5. Modify the main.tf to reference your project ID.
6. Run terraform init from the directory where your terraform files are located
7. Run terraform plan
8. terraform apply -auto-approve
9. Confirm you get return values of something similar.

➜  googlecloud git:(master) ✗ terraform apply -auto-approve
random_id.instance_id: Refreshing state... [id=h3kS14c0cv4]
google_compute_instance.default: Refreshing state... [id=vm-877912d7873472fe]
google_compute_network.starksentvpc: Creating...
google_compute_firewall.http-server: Creating...
google_compute_firewall.http-server: Creation complete after 8s [id=default-allow-http]
google_compute_network.starksentvpc: Still creating... [10s elapsed]
google_compute_network.starksentvpc: Still creating... [20s elapsed]
google_compute_network.starksentvpc: Still creating... [30s elapsed]
google_compute_network.starksentvpc: Still creating... [40s elapsed]
google_compute_network.starksentvpc: Creation complete after 47s [id=starksentvpc]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ip = 34.74.xx.xx


