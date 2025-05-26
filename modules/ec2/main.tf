resource "aws_instance" "this" {
    ami = var.ami
    availability_zone = var.availability_zone
    associate_public_ip_address = true
    instance_type = var.instance_type
    vpc_security_group_ids = [var.security_groups]
    subnet_id = var.subnet_id
    key_name = var.key_name
    tags = merge(var.tags,{
        Name = var.ec2_name
    })
  
}