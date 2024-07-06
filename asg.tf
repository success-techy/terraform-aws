resource "aws_autoscaling_group" "asg" {
  desired_capacity     = "1"
  max_size             = "4"
  min_size             = "1"
  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }

  vpc_zone_identifier = [aws_subnet.public_subnets1.id, aws_subnet.public_subnets2.id]
  target_group_arns = [aws_lb_target_group.mydemotg.arn]
  tag {
    key                 = "Name"
    value               = "MyASG"
    propagate_at_launch = true
  }
}