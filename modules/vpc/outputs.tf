output "vpc_id" {
    description = "cidr of VPC"
    value = aws_vpc.this.id
}