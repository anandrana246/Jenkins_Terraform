variable "ami" {
    description = "AMI ID for the EC2 instance"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

variable "availability_zone" {
    description = "Subnet ID to launch the EC2 instance in"
    type = string
}

variable "security_groups" {
    description = "Security Group ID to attach to the instance"
    type = string
}

variable "subnet_id" {
    description = "Key pair name for SSH access"
    type = string
}

variable "tags" {
    description = "Tags to assign to the instance"
    type = map(string)
}

variable "key_name" {
    description = "Key pair name for SSH access"
    type        = string
}

variable "ec2_name" {
    description = "Name for EC2"
    type = string
}