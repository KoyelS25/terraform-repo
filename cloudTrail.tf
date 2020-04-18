resource "aws_cloudtrail" "whispering_trails" {
  name           = "new_trail"
  s3_bucket_name = "paint_bucket"
