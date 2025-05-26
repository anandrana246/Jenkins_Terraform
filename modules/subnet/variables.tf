variable "vpc_id" {
    description = "vpc_id for subnet"
    type = string
}

variable "subnet_cidr_block" {
    description = "cidr_block for subnet"
    type = string
}

variable "availability_zone" {
    description = "availability zone for subnet"
    type = string
}

variable "subnet_name" {
    description = "Name of subnet"
    type = string
}