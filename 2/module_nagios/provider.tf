provider "aws" {
  region  = "${var.region}"
  version = "2.60"
}

variable "region" {}

region = "us-west-2"