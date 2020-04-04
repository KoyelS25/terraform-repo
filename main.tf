provider "aws" {

  region = "ap-south-1"
  access_key = "AKIAJPMPPAYZS5LN4TVQ"
  secret_key = "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"
  }

resource "aws_s3_bucket" "b" {
  bucket = "test-easy-learn-terraform"
  acl = "private"

  tags {
    Name = "Terraform Bucket"
    Environment = "Dev-Env"
  }
  versioning {
    enabled = true
  }
  }
}
