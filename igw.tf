resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.demo.id

tags = {
   Name = "My Demo IGW"
}
}
