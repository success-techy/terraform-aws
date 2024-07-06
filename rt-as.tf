resource "aws_route_table_association" "public_subnet_association1" {
 subnet_id      = aws_subnet.public_subnets1.id
 route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_association2" {
 subnet_id      = aws_subnet.public_subnets2.id
 route_table_id = aws_route_table.public_rt.id
}


resource "aws_route_table_association" "private_subnet_association1" {
 subnet_id      = aws_subnet.private_subnets1.id
 route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_subnet_association2" {
 subnet_id      = aws_subnet.private_subnets2.id
 route_table_id = aws_route_table.private_rt.id
}
