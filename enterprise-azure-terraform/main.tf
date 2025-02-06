module "networking" {
  source              = "./modules/networking"
  location           = var.location
  resource_group_name = var.resource_group_name
}

module "compute" {
  source              = "./modules/compute"
  location           = var.location
  resource_group_name = var.resource_group_name
}

module "security" {
  source              = "./modules/security"
  location           = var.location
  resource_group_name = var.resource_group_name
}

module "monitoring" {
  source              = "./modules/monitoring"
  location           = var.location
  resource_group_name = var.resource_group_name
}
