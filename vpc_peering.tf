resource "aws_vpc_peering_connection" "foo" {
  peer_owner_id = "503102129791"
  peer_vpc_id   = "vpc-0e3616a4c61601122"
  vpc_id        = "vpc-f44b108f"
}
