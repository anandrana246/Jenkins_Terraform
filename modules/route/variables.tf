variable "gateway_id" {
    description = "ID of the route table to associate the route with"
    type = string
}

variable "destination_cidr_block" {
    description = "CIDR block to route"
    type = string
}

variable "route_table_id" {
    description = "Internet Gateway ID for the route"
    type = string
}