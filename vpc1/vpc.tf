resource "aws_vpc" "nagiosxi" {
  cidr_block = "${var.vpc_cidr}"
  tags       = "${var.tags}"
}
