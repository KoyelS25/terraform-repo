resource "aws_iam_user" "new_book" {
  name = "novel"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
