variable "aws_region" {
  description = "AWS region where the VM will be deployed"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Example Amazon Linux AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
}

variable "security_group_id" {
  description = "Security Group ID for the instance"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  default     = "MyTerraformVM"
}
