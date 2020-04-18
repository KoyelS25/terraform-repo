resource "aws_cloudtrail" "master_cloudtrail" {
  name                          = "whispering_trails"
  s3_bucket_name                = "fables"
  s3_key_prefix                 = "cloudtrail"
  include_global_service_events = false
