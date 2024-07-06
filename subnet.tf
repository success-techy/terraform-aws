resource "aws_subnet" "public_subnets1" {
 vpc_id = aws_vpc.demo.id
  cidr_block = "192.168.10.0/26" 
 availability_zone = "us-east-2a"

tags = {
  Name = "Public Subnet 1"
}
}



resource "aws_subnet" "public_subnets2" {
 vpc_id = aws_vpc.demo.id
 cidr_block = "192.168.10.64/26"

 availability_zone = "us-east-2b"

tags = {
  Name = "Public Subnet 2"
}
}


resource "aws_subnet" "private_subnets1" {
 vpc_id = aws_vpc.demo.id
  cidr_block = "192.168.10.128/26"
 availability_zone = "us-east-2a"

tags = {
  Name = "Private Subnet 1"
}
}

resource "aws_subnet" "private_subnets2" {
 vpc_id = aws_vpc.demo.id
 cidr_block = "192.168.10.192/26"

 availability_zone = "us-east-2b"

tags = {
  Name = "Private Subnet 2"
}
}
