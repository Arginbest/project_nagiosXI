resource "aws_subnet" "private1" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Private_cidr_block1}"
  tags       = "${var.tags}"
}

resource "aws_subnet" "private2" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Private_cidr_block2}"
  tags       = "${var.tags}"
}

resource "aws_subnet" "private3" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Private_cidr_block3}"
  tags       = "${var.tags}"
}
