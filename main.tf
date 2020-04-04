provider "aws" {

  region = "ap-south-1"
  access_key = "AKIAXKIZZIZ7UJNURRGC"
  secret_key = "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"
  }

resource "aws_s3_bucket" "koyel" {
  bucket = "sumana"
  acl = "private"


  versioning {
    enabled = true
  }
  }
resource "aws_iam_role_policy" "ec2_policy" {
  name = "ec2_policy"
  role = "aws_iam_role.terraform_ec2_role.id"

  policy = "file("ec2-policy.json")"
}

resource "aws_iam_role" "terraform_ec2_role" {
    name = "ec2_policy_role"
    assume_role_policy = "${file("ec2-assume_policy.json")}"
}

resource "aws_iam_instance_profile" "ec2_profile" {
    name = "ec2_policy_profile"
    role = "${aws_iam_role.role.name)}"
}
