resource "aws_cloudtrail" "ct_log" {
  name                          = "tf-trail-ct_log"
  s3_bucket_name                = "terra-cloudtrail"
  include_global_service_events = false
}
