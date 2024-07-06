resource "aws_lb_target_group" "mydemotg" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.demo.id
}

resource "aws_lb_target_group_attachment" "web1" {
  target_group_arn = aws_lb_target_group.mydemotg.arn
  target_id        = aws_instance.myec2-1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "web2" {
  target_group_arn = aws_lb_target_group.mydemotg.arn
  target_id        = aws_instance.myec2-2.id
  port             = 80
}


resource "aws_lb" "main" {
  name               = "example-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.mysg.id]
  subnets            = [aws_subnet.public_subnets1.id, aws_subnet.public_subnets2.id]

  enable_deletion_protection = false
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.mydemotg.arn
  }
}
