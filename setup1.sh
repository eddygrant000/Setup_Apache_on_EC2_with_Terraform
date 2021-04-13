#!/bin/bash

sudo apt install unzip -y
sudo yum install unzip -y

curl -O https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_linux_amd64.zip
sudo unzip terraform_0.14.10_linux_amd64.zip  -d /usr/bin/
rm terraform_0.14.10_linux_amd64.zip
terraform  -v
