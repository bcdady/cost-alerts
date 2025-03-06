
module "cost-anomaly-detector" {
  source = "../modules/azure-cost-monitoring"

  alert_email_address = var.alert_email_address
}
