output "alb_dns_name" {
  description = "ALB DNS name — open in browser"
  value       = aws_lb.main.dns_name
}

output "asg_name" {
  description = "Auto Scaling Group name"
  value       = aws_autoscaling_group.app.name
}

output "asg_capacity" {
  description = "ASG min/max/desired"
  value = {
    min     = aws_autoscaling_group.app.min_size
    max     = aws_autoscaling_group.app.max_size
    desired = aws_autoscaling_group.app.desired_capacity
  }
}
