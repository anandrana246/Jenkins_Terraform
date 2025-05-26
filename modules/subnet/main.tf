resource "aws_subnet" "this" {
    cidr_block = var.subnet_cidr_block
    vpc_id = var.vpc_id
    availability_zone = var.availability_zone
    map_public_ip_on_launch =  true
    tags = {
      name = var.subnet_name
    }
  
}