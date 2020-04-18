provider "aws" {
  region = "us-east-1"
  access_key = var.Access_Key_ID
  secret_key = var.Secret_Access_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = "vpc-0e3616a4c61601122"
  cidr_block = "10.10.0.0/24"

  tags = {
    Name = "Main"
  }
}
