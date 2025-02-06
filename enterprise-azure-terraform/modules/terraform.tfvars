# General Configuration
location            = "East US"
resource_group_name = "Enterprise-RG"

# Networking
vnet_name           = "Enterprise-VNet"
subnet_name         = "Enterprise-Subnet"

# Compute (AKS Cluster Configuration)
aks_cluster_name    = "Enterprise-AKS"
node_count         = 3
vm_size            = "Standard_D4s_v3"

# Security
key_vault_name      = "Enterprise-KeyVault"
nsg_name            = "Enterprise-NSG"

# Monitoring & Logging
log_analytics_name  = "Enterprise-Log-Analytics"
log_analytics_id    = "/subscriptions/xxxxxx/resourceGroups/Enterprise-RG/providers/Microsoft.OperationalInsights/workspaces/enterprise-log-analytics"

# CI/CD Pipeline (GitHub Actions Integration)
terraform_state_rg  = "Terraform-State-RG"
terraform_storage_account = "terraformstate1234"
terraform_container_name  = "tfstate"
