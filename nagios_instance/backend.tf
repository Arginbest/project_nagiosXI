data "terraform_remote_state" "nagios_data" {
  backend = "s3"
  config = {
    bucket = "state-class-baurzhanclass"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}