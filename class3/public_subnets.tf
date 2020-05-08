resource "aws_subnet" "public1" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Public_cidr_block1}"

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Public_cidr_block2}"

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "public3" {
  vpc_id     = "${aws_vpc.nagiosxi.id}"
  cidr_block = "${var.Public_cidr_block3}"

  tags = {
    Name = "public"
  }
}
