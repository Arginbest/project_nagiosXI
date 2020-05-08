
resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.medium"
  key_name      = "${aws_key_pair.nagiosxi_key.key_name}"
  # subnet_id     = "${data.terraform_remote_state.nagios_data.vpc}"
  # vpc_security_group_ids = ["${data.terraform_remote_state.nagios_data.vpc_sec_group}"]
  # subnet_id     = "${data.terraform_remote_state.nagios_data.public_subnets.1}"

#   provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#       host        = "${aws_instance.centos.public_ip}"
#     }

#     inline = [
#       # "sudo yum install unzip  curl -y",
#       # "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh",
#     ]
#   }
# }

# output "centos" {
#   value = "${data.aws_ami.centos.id}"
}