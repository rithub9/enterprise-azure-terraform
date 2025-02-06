variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "Enterprise-RG"
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "Enterprise-VNet"
}
