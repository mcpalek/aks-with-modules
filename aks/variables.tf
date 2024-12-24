variable "client_id" {
  description = "The client ID for the service principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the service principal"
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}
variable "location" {
  description = "The location of the resource group"
  type        = string
}
variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the Kubernetes cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
}

variable "vm_size" {
  description = "The size of the virtual machines in the node pool"
  type        = string
}

variable "os_disk_size_gb" {
  description = "The size of the OS disk in GB"
  type        = number
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
variable "authorized_ip_ranges" {
  type        = list(string)
  description = "A list of IP ranges that are allowed to access the Kubernetes API server."
}