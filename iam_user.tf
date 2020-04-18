resource "aws_iam_user" "new_book" {
  name = "novel"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "new_book" {
  user = "new_page"
}

resource "aws_iam_user_policy" "pro_policy" {
  name = "test"
  user = "new_page"

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
