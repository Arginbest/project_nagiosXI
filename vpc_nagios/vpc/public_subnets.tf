resource "aws_subnet" "public1" {
  vpc_id                  = "${aws_vpc.nagiosxi.id}"
  cidr_block              = "${var.Public_cidr_block1}"
  availability_zone       = "${var.region}${var.az1}"
  map_public_ip_on_launch = "true"

  tags = "${var.tags}"
}

resource "aws_subnet" "public2" {
  vpc_id                  = "${aws_vpc.nagiosxi.id}"
  cidr_block              = "${var.Public_cidr_block2}"
  availability_zone       = "${var.region}${var.az2}"
  map_public_ip_on_launch = "true"
  tags                    = "${var.tags}"
}

resource "aws_subnet" "public3" {
  vpc_id                  = "${aws_vpc.nagiosxi.id}"
  cidr_block              = "${var.Public_cidr_block3}"
  availability_zone       = "${var.region}${var.az3}"
  map_public_ip_on_launch = "true"
  tags                    = "${var.tags}"
}
