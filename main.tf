module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_name = var.vpc_name
    tag = var.tags
}

module "subnet" {
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id
    availability_zone = var.availability_zone
    subnet_name = var.subnet_name
    subnet_cidr_block = var.subnet_cidr_block
}

module "internet_Gateway" {
    source = "./modules/Internet_Gateway"
    vpc_id = module.vpc.vpc_id
    igw_name = var.igw_name
    tags = var.tags
}

module "route" {
    source = "./modules/route"
    gateway_id = module.internet_Gateway.igw_id
    route_table_id = module.route_table.route_table_id
    destination_cidr_block = var.destination_cidr_block
}

module "route_table" {
    source = "./modules/route_table"
    rt_Name = var.rt_Name
    vpc_id = module.vpc.vpc_id
    tags = var.tags
}

module "route_table_association" {
    source = "./modules/route_table_association"
    route_table_id = module.route_table.route_table_id
    subnet_id = module.subnet.subnet_id
}


module "security_group" {
    source = "./modules/security_group"
    sg_name = var.sg_name
    ingress_rules = var.ingress_rules
    egress_rules = var.egress_rules
    vpc_id = module.vpc.vpc_id
    tags = var.tags
}


module "EC2_instance" {
    source = "./modules/ec2"
    ami = var.ami
    availability_zone = var.availability_zone
    ec2_name = var.ec2_name
    instance_type = var.instance_type
    subnet_id = module.subnet.subnet_id
    security_groups = module.security_group.sg_id
    key_name = var.key_name
    tags = var.tags
}




