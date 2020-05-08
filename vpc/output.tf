output "region" {
  value = "${var.region}"
}

output "NAT_WG" {
  value = "${aws_nat_gateway.gw.id}"
}

output "IGW" {
  value = "${aws_internet_gateway.gw.id}"
}

output "vpc" {
  value = "${aws_vpc.nagiosxi.id}"
}

output "vpc_sec_group" {
  value = "${aws_security_group.datasource_class.id}"
}

output "public_subnets" {
  value = [
    "${aws_subnet.public1.id}",
    "${aws_subnet.public2.id}",
    "${aws_subnet.public3.id}",
  ]
}

output "private_subnets" {
  value = [
    "${aws_subnet.private1.id}",
    "${aws_subnet.private2.id}",
    "${aws_subnet.private3.id}",
  ]
}

output "Tags" {
  value = "${var.tags}"
}
