terraform {

  required_version = "0.11.0"

  backend "s3" {
    bucket         = "example-bucket"
    key            = "path/to/state"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "example-table"
  }
}

locals {

  tf_state_name = "testmeout (${terraform.workspace})"

}