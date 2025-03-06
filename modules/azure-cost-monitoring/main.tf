locals {
  # format subscription display name to lower case, no spaces
  subscription_display_name = replace(lower(data.azurerm_subscription.current.display_name), " ", "-")
}

data "azurerm_subscription" "current" {
}

resource "azurerm_cost_anomaly_alert" "this" {
  name            = "azure-cost-anomaly-${local.subscription_display_name}"
  display_name    = "Azure Cost Anomaly for subscription ${data.azurerm_subscription.current.display_name}"
  subscription_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}"
  email_subject   = "Azure Cost Anomaly for subscription ${data.azurerm_subscription.current.display_name}"
  email_addresses = [var.alert_email_address]
}
