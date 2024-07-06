resource "aws_launch_template" "lt" {
  name_prefix   = "My-Lauch-Template"
  image_id      = aws_ami_from_instance.ami_backup.id
  instance_type = "t2.micro"
  key_name = "chacokey-ohio"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  #subnet_id = aws_subnet.public_subnets1.id 
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "My-Template"
    }
  }
}