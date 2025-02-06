resource "azurerm_network_security_group" "nsg" {
  name                = "enterprise-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_key_vault" "kv" {
  name                = "enterprise-keyvault"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = "your-tenant-id"
  sku_name            = "standard"
}
