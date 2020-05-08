resource "aws_route_table" "private_route" {
  vpc_id = "${aws_vpc.nagiosxi.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags {
    Name = "Private"
  }
}

resource "aws_route_table" "Public" {
  vpc_id = "${aws_vpc.nagiosxi.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags {
    Name = "Public"
  }
}
