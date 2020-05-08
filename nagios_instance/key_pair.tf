resource "aws_key_pair" "nagiosxi_key" {
  key_name   = "nagios_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
