provider "aws" {
  access_key = var.Access_Key_ID
  secret_key = var.Secret_Access_key
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

