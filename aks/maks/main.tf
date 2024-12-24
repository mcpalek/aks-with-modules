
resource "azurerm_kubernetes_cluster" "default" {
   api_server_access_profile {
    authorized_ip_ranges = var.authorized_ip_ranges
  }
  
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name            = var.node_pool_name
    node_count      = var.node_count
    vm_size         = var.vm_size
    os_disk_size_gb = var.os_disk_size_gb
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
  
  tags = var.tags

  
    
}


