#######################################################################################

#!/bin/bash

######################################################################################

# Author        : DevOps Starks
# Email         : ncsu.ee2017@gmail.com
# Description   : Terraform plan script
# Documentation : https://www.terraform.io/docs/commands/plan.html

######################################################################################

# Export Path Variable
export PATH=$PATH:/opt

######################################################################################

# If statement to ensure a user has provided a Terraform folder path
if [[ -z "$1" ]]; then
echo ""
echo "You have not provided a Terraform Path."
echo "SYNTAX = ./plan.sh <PATH>"
echo "EXAMPLE = ./plan.sh"
echo ""
exit
fi

######################################################################################

# The Init command is used to initializ         e a working directory containing Terraform configuration files.
# This is the first command that should be run after writing a new Terraform configuration
terraform init $1

#The Get command is used to download and update modules mentioned in the root module.
terraform get $1

#The Plan command is used to create an execution plan
terraform plan $1

####################################################################################