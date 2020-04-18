resource "aws_cloudtrail" "default" {
  name           = "new_trail"
  s3_bucket_name = "paint_bucket"
