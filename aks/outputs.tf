output "kube_config" {
  value       = module.maks.kube_config
  sensitive   = true
}