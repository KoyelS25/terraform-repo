resource "aws_s3_bucket" "paint_bucket" {
  bucket = "my-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
