resource "null_resource" "reset_password_nagiosadmin" {
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }
    inline = [
      "sudo yum install httpd -y",
    # "htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin",
    # "/usr/local/nagiosxi/scripts/reset_nagiosadmin_password.php --password=123",
  ]
  }
}

# resource "null_resource" "install_stress" {
#   provisioner "remote-exec" {
#     connection {
#       type        = "ssh"
#       user        = "centos"
#       private_key = "${file("~/.ssh/id_rsa")}"
#       host        = "${aws_instance.centos.public_ip}"
#     }
#     inline = [
#       "sudo yum install stress -y",
#     # "htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin",
#     # "/usr/local/nagiosxi/scripts/reset_nagiosadmin_password.php --password=123",
#   ]
#   }
# }
