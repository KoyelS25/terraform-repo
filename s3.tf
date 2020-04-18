resource "aws_s3_bucket" "bucky_bucket" {
  bucket = "my-tf-hs-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
