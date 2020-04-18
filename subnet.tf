resource "aws_subnet" "main" {
  vpc_id     = "vpc-0e3616a4c61601122"
  cidr_block = "10.10.0.0/24"

  tags = {
    Name = "Main"
  }
}
