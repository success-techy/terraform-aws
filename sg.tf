resource "aws_security_group" "mysg" {
  name = "My-Sample-Sec-Grp"
  description = "demo"

tags = {
  Name = "Terraform-Sec-Group"
}
  ingress  {
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }


    ingress  {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress  {
    from_port = 8080
    to_port = 8080
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }



 egress  {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
 }

 vpc_id = aws_vpc.demo.id

}

