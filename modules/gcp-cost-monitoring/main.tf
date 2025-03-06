
# If you are using User ADCs (Application Default Credentials) with this resource,
# you must specify a billing_project and set user_project_override to true in the provider configuration.
# Otherwise the Billing Budgets API will return a 403 error.
# Your account must have the serviceusage.services.use permission on the billing_project you defined.
# -- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget

data "google_billing_account" "account" {
  billing_account = var.billing_account_id
}

resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.account.id
  display_name    = "Google Cloud Billing Budget"
  amount {
    specified_amount {
      currency_code = "USD"
      units         = var.alert_threshold
    }
  }
  threshold_rules {
    threshold_percent = 0.5
  }
}

resource "google_monitoring_notification_channel" "email" {
  display_name = "Cost Anomaly Notification Channel"
  type         = "email"
  labels = {
    email_address = var.alert_email_address
  }
}
