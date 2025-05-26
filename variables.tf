variable "ami" {
    type = string
}

variable "availability_zone" {
    type = string
}

variable "subnet_cidr_block" {
    type = string
}

variable "vpc_cidr_block" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "tags" {
    type = map(string)
}

variable "subnet_name" {
    type = string
}

variable "igw_name" {
    type = string
}

variable "destination_cidr_block" {
    type = string
}

variable "rt_Name" {
    type = string
}

variable "sg_name" {
    type = string
}

variable "ingress_rules" {
  description = "Ingress rules for Public Security Group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
    description = "egress rules for Public Security Group"
    type = list(object({
      from_port = number
      to_port = number
      protocol= string
      cidr_blocks = list(string)
    }))
}

variable "ec2_name" {
    type = string
}

variable "instance_type" {
    type = string
}


variable "key_name" {
    type = string
}