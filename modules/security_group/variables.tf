variable "vpc_id" {
    description = "vpc_id for security group"
    type = string
}

variable "sg_name" {
    description = "name for security group"
    type = string
}

variable "tags" {
    description = "tags for security group"
    type = map(string)
}

variable "ingress_rules" {
    description = "A list of ingress rules for the security group"
    type = list(object({
      from_port = number
      to_port = number
      protocol = string
      cidr_blocks = list(string)
    }))
  
}

variable "egress_rules" {
    description = "A list of egress rules for the security group"
    type = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
  
}