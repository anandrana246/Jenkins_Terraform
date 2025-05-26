variable "vpc_id" {
    description = "VPC Id for route table"
    type = string
}

variable "tags" {
    description = "Tags for route_table"
    type = map(string)
}

variable "rt_Name" {
    description = "rt_name for route table"
    type = string
}