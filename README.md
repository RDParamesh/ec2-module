# Terraform AWS EC2 Deployment Module

## Overview
This Terraform module provisions an **EC2 instance** in **AWS**. It allows for customization of instance type, key pair, networking, and security groups.

## Prerequisites
Ensure you have the following before using this module:
- **AWS CLI** installed and configured
- **Terraform** installed
- **An existing VPC, subnet, and security group**
- **An AWS key pair for SSH access**

## Usage

### 1. Initialize Terraform
```sh
terraform init
```

### 2. Define Variables
Create a `terraform.tfvars` file and define the following variables:
```hcl
aws_region         = "us-west-2"
ami_id             = "ami-0c55b159cbfafe1f0"
instance_type      = "t2.micro"
key_name           = "my-key-pair"
subnet_id          = "subnet-0abcd1234"
security_group_id  = "sg-0abcd1234"
vm_name            = "MyTerraformVM"
```

### 3. Plan the Deployment
```sh
terraform plan
```

### 4. Apply the Deployment
```sh
terraform apply
```

### 5. Retrieve Outputs
Once the deployment is complete, you can get the instance details:
```sh
echo "Instance ID: $(terraform output instance_id)"
echo "Public IP: $(terraform output public_ip)"
```

## Module Structure
```
terraform-aws-vm/
├── main.tf        # Defines EC2 instance resource
├── variables.tf   # Input variables
├── outputs.tf     # Output values
├── provider.tf    # AWS provider configuration
├── README.md      # Documentation
```

## Cleanup
To destroy the deployed resources, run:
```sh
terraform destroy
```


