resource "aws_instance" "myec2-1" {

instance_type = "t2.micro"
ami = "ami-0ca2e925753ca2fb4"
key_name = "chacokey-ohio"
subnet_id = aws_subnet.public_subnets1.id
vpc_security_group_ids = [aws_security_group.mysg.id]
associate_public_ip_address = true

root_block_device {
    volume_size = 10
  }

user_data = <<-EOF
#!/bin/bash
yum install httpd -y
echo "<h1> Sample Web Pahe </h1>" >/var/www/html/index.html 
systemctl restart httpd
systemctl enable httpd
EOF


tags = {
  Name = "Terraform-1"
  Env = "Staging"
}

  
}

resource "aws_instance" "myec2-2" {

instance_type = "t2.micro"
ami = "ami-0ca2e925753ca2fb4"
key_name = "chacokey-ohio"
subnet_id = aws_subnet.public_subnets2.id
vpc_security_group_ids = [aws_security_group.mysg.id]
associate_public_ip_address = true

root_block_device {
    volume_size = 10
  }

user_data = <<-EOF
#!/bin/bash
yum install httpd -y
echo "<h1> Sample Web Pahe </h1>" >/var/www/html/index.html 
systemctl restart httpd
systemctl enable httpd
EOF


tags = {
  Name = "Terraform-2"
  Env = "Staging"
}

  
}