resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = "enterprise-log-analytics"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}
