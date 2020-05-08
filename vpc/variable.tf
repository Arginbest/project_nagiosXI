variable "region" {}
variable "vpc_cidr" {}
variable "Private_cidr_block1" {}
variable "Private_cidr_block2" {}
variable "Private_cidr_block3" {}
variable "Public_cidr_block1" {}
variable "Public_cidr_block2" {}
variable "Public_cidr_block3" {}

variable "tags" {
  type = "map"
}

variable "az1" {}
variable "az2" {}
variable "az3" {}
