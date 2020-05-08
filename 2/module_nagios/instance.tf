data "terraform_remote_state" "nagios_data" {
  backend = "s3"
  config = {
    bucket = "state-class-baurzhanclass"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.medium"
  key_name      = "${aws_key_pair.nagiosxi_key.key_name}"
  subnet_id     = "${data.terraform_remote_state.nagios_data.public_subnets.1}"
  vpc_security_group_ids = ["${data.terraform_remote_state.nagios_data.vpc_sec_group}"]

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