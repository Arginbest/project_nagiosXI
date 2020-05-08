terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "state-class-baurzhanclass"
    key    = "path/to/my/nagios/key"

    dynamodb_table = "Baurstateclass"
    region         = "us-east-1"
  }
}
