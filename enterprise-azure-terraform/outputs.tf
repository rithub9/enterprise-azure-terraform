output "vnet_name" {
  value = module.networking.vnet_name
}

output "aks_cluster_name" {
  value = module.compute.aks_cluster_name
}

output "key_vault_name" {
  value = module.security.key_vault_name
}

output "log_analytics_name" {
  value = module.monitoring.log_analytics_name
}
