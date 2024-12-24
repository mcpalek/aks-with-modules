authorized_ip_ranges = ["192.168.1.0/24", "93.00.00.0/24"]
resource_group_name = "rg-aks-test-001"
resource_group_location = "West Europe"
location            = "West Europe"
cluster_name        = "aks-test-001"
dns_prefix          = "dns-k8s-test"
kubernetes_version  = "1.30.6"
node_pool_name      = "testpool"
node_count          = 1
vm_size             = "Standard_B2s"  # Updated VM size
os_disk_size_gb     = 30
tags = {
  Environment = "Test"
}

