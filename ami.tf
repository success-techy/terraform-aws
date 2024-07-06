resource "aws_ami_from_instance" "ami_backup" {
  name               = "myami"
  source_instance_id = aws_instance.myec2-1.id
  tags = {
    Name = "terraform-ami"
  }
}

