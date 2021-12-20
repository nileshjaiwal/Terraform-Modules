# Terraform-Modules

## Description

This module is to create the AWS EC2 instance and Security Groups. Once Both the resources got created security group will get attached to EC2 instance.

## Version

Terraform v0.14.8

## Requirements

Create the terraform tfvars file. Input variables is mentioned in the input section. 

terrafomr.tfvars.json format
-----------------------------
{
    "imageId"             : "",
    "instanceType"        : "",
    "subnetId"            : "",
    "security_group_name" : "",  
    "vpc_id"              : "",
    "tags"                : { "" : ""}, 
    "ingress"             : [{ "" : ""}],
    "egress"             : [{ "" : ""}], 
}

## Execution steps

1. Set the environment variable TF_DATA_DIR
2. terraform initialize

3. terraform apply

terraform -chdir=<<terraform script location>> apply -var-file=<<terraform.tfvars.json absolute file path >> -auto-approve -input=false -lock=false 
