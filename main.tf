provider "aws" {

  region = "ap-south-1"
  access_key = "AKIAXKIZZIZ7UJNURRGC"
  secret_key = "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"
  }

resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = "My test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
