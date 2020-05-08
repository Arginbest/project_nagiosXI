output "region" {
  value = "${data.terraform_remote_state.main.region}"
}

output "NAT_WG" {
  value = "${data.terraform_remote_state.main.NAT_WG}"
}

output "IGW" {
  value = "${data.terraform_remote_state.main.IGW}"
}

output "vpc" {
  value = "${data.terraform_remote_state.main.vpc}"
}

output "vpc_sec_group" {
  value = "${data.terraform_remote_state.main.vpc_sec_group}"
}

output "public_subnets" {
  value = [
    "${data.terraform_remote_state.main.public_subnets.0}",
    "${data.terraform_remote_state.main.public_subnets.1}",
    "${data.terraform_remote_state.main.public_subnets.2}",
  ]
}

output "private_subnets" {
  value = [
    "${data.terraform_remote_state.main.private_subnets.0}",
    "${data.terraform_remote_state.main.private_subnets.1}",
    "${data.terraform_remote_state.main.private_subnets.2}",
  ]
}

output "Tags" {
  value = "${data.terraform_remote_state.main.Tags.Team}"
}

output "NagiosXI" {
  value = "Installed"
}

output "Username" {
  value = "nagiosadmin"
}

output "Password" {
  value = "%OO4pg.TKvFPXD^oaHm5"
}

output "Instruction" {
  value = ["Finalize your Nagios XI installation and step the initial configuration",
    "These settings can be changed later with single command",
    "/usr/local/nagiosxi/scripts/reset_nagiosadmin_password.php --password=newpassword",
  ]
}
