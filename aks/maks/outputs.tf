output "kube_config" {
  value       = azurerm_kubernetes_cluster.default.kube_config_raw
  sensitive   = true
}