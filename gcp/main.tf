module "cost-anomaly-detector" {
  source = "../modules/gcp-cost-monitoring"

  alert_email_address = var.alert_email_address
  alert_threshold     = var.alert_threshold
  billing_account_id  = var.billing_account_id
}
