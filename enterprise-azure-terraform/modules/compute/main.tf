resource "azurerm_kubernetes_cluster" "aks" {
  name                = "enterprise-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aks-cluster"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}
