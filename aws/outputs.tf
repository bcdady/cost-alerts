
output "anomaly_monitor_arn" {
  description = "The ARN of the AWS Cost Explorer anomaly monitor"
  value       = module.cost-anomaly-detector.anomaly_monitor_arn
}

output "anomaly_subscription_arn" {
  description = "The ARN of the AWS Cost Explorer anomaly subscription"
  value       = module.cost-anomaly-detector.anomaly_subscription_arn
}

output "sns_topic_arn" {
  description = "The ARN of the SNS topic for anomaly notifications"
  value       = module.cost-anomaly-detector.sns_topic_arn
}
