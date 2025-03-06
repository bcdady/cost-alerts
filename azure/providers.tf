
provider "azurerm" {
  # Configuration options
  # Defaults to AzurePublicCloud.
  features {}
  # (Required) The Subscription ID which should be used.
  # This can also be sourced from the ARM_SUBSCRIPTION_ID Environment Variable.
  # subscription_id = var.subscription_id
}
