module "vpc" {
  source = "./vpc"
  
region = "us-west-2"

az1           =    "a"
az2           =    "b"
az3           =    "c"

vpc_cidr = "10.0.0.0/16"
Private_cidr_block1 = "10.0.1.0/24"
Private_cidr_block2 = "10.0.2.0/24"
Private_cidr_block3 = "10.0.3.0/24"

Public_cidr_block1 = "10.0.101.0/24"
Public_cidr_block2 = "10.0.102.0/24"
Public_cidr_block3 = "10.0.103.0/24"

tags = {
    Environment  = "DevOps"
    Department   = "Febrary2020"
    Team         = "team2"
    Project      = "NagiosXI"
}
}