ami                         = "ami-0953476d60561c955"
availability_zone           = "us-east-1a"
vpc_cidr_block              = "10.0.0.0/16"
subnet_cidr_block           = "10.0.1.0/24"
vpc_name                    = "Jenkins_VPC"
igw_name                    = "Jenkins_igw"
destination_cidr_block      = "0.0.0.0/0"
rt_Name                     = "Jenkins_rt"
sg_name                     = "Jenkins_sg"
ec2_name                    = "Jenkins_ec2"
subnet_name                 = "Jenkins_subnet"
instance_type               = "t2.micro"
key_name                    = "kube-demo"

ingress_rules = [ {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }]

egress_rules = [ {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = [ "0.0.0.0/0" ]
} ]

tags = {
  "Project"     = "Jenkins"
  "owner"       = "Rana"
  "Environment" = "Prod"
}