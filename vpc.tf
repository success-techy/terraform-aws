resource "aws_vpc" "demo" {
  cidr_block = "192.168.10.0/24"
  enable_dns_hostnames = true
tags = {
  Name = "Demo-VPC"
  Env =  "dev"
  POC = "Alaguraj"
  Team = "devops"
}
} 

