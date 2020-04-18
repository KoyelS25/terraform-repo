provider "aws" {
  region = "us-west-1"
  access_key = var.Access_Key_ID
  secret_key = var.Secret_Access_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}

resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-example-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  tags = {
    Environment = "production"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = "vpc-0e3616a4c61601122"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
