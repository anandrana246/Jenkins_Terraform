variable "vpc_cidr_block" {
    type = string
    description = "CIDR Block for VPC"
}

variable "tag" {
    type = map(string)
    description = "Tag for VPC"
}

variable "vpc_name" {
    type = string
    description = "Name for VPC"
}