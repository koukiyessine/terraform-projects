# CloudWatch Alarm
resource "aws_cloudwatch_metric_alarm" "nautilus_alarm" {
  alarm_name          = "nautilus-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  period              = 300                        # 5 minutes (in seconds)
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when CPU exceeds 80% utilization"
  /*dimensions = {
    InstanceId = aws_instance.nautilus_ec2.id      # attach to EC2 instance
  }*/
}