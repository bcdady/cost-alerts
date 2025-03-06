output "anomaly_monitor_arn" {
  description = "The ARN of the AWS Cost Explorer Anomaly Monitor"
  value       = aws_ce_anomaly_monitor.anomaly_monitor.arn
}

output "anomaly_subscription_arn" {
  description = "The ARN of the AWS Cost Explorer Anomaly Subscription"
  value       = aws_ce_anomaly_subscription.realtime_subscription.arn
}

output "sns_topic_arn" {
  description = "The ARN of the SNS topic for anomaly notifications"
  value       = aws_sns_topic.anomaly_notification.arn
}
