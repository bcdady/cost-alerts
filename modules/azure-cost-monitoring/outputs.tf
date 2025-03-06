output "anomaly_monitor_id" {
  description = "The ID of the Azure Cost Management anomaly monitor"
  value       = azurerm_cost_anomaly_alert.this.id
}

output "anomaly_monitor_name" {
  description = "The Name of the Azure Cost Management anomaly monitor"
  value       = "azure-cost-anomaly-${local.subscription_display_name}"
}
