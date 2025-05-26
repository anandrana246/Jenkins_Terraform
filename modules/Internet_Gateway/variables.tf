variable "igw_name" {
    description = "Name for IGW"
    type = string
}

variable "vpc_id" {
    description = "vpc_it for Igw"
    type = string
}

variable "tags" {
    description = "Tags for route_table"
    type = map(string)
}
