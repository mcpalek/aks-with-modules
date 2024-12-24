provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "maks" {
  source              = "./maks/"
  authorized_ip_ranges = var.authorized_ip_ranges
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  client_id           = var.client_id
  client_secret       = var.client_secret
  clientId            = var.client_id
  clientSecret        = var.client_secret
  subscription_id     = var.subscription_id
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  node_pool_name      = var.node_pool_name
  node_count          = var.node_count
  vm_size             = var.vm_size
  os_disk_size_gb     = var.os_disk_size_gb
  tags                = var.tags
    depends_on = [
    azurerm_resource_group.rg
  
  ]
  
}


