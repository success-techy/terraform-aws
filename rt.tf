resource "aws_route_table" "public_rt" {
 vpc_id = aws_vpc.demo.id

 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.gw.id
 }

 tags = {
   Name = "Public Route Table"
 }
}

resource "aws_route_table" "private_rt" {
 vpc_id = aws_vpc.demo.id

 tags = {
   Name = "private Route Table"
 }
}
