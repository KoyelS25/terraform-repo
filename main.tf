provider "aws" {

  region = "ap-south-1"
  access_key = "AKIAXKIZZIZ72UMEDO7R"
  secret_key = "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"
  }

resource "aws_s3_bucket" "terra-bucket-test" {
  bucket = "test-terraform"
  acl = "private"


  versioning {
    enabled = true
  }
  }
