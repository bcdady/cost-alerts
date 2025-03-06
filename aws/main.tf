
module "cost-anomaly-detector" {
  source = "../modules/aws-cost-monitoring"

  sns_topic_name        = "anomaly-notification-topic"
  alert_email_address   = var.alert_email_address
  raise_amount_percent  = "10"
  raise_amount_absolute = "15"
}
