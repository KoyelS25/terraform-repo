provider "aws" {

  region = "ap-south-1"
  access_key = "AKIAXKIZZIZ7UJNURRGC"
  secret_key = "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"
  }

resource "aws_iam_role_policy" "ec2_policy" {
  name = "ec2_policy"
  role = "aws_iam_role.terraform_ec2_role.id"

  policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ec2:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role" "terraform_ec2_role" {
    name = "ec2_policy_role"
    assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },

            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}
