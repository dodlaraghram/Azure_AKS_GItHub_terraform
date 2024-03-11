
output "resource_group_name" {
  value = azurerm_resource_group.demorg.name
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.k8s.name
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.client_certificate
  sensitive = true
}

output "client_key" {
  value     = azurerm_kubernetes_cluster.k8s.client_key
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = azurerm_kubernetes_cluster.cluster_ca_certificate
  sensitive = true
}

output "cluster_password" {
  value     = azurerm_kubernetes_cluster.k8s.password
  sensitive = true
}

output "cluster_username" {
  value     = azurerm_kubernetes_cluster.k8s.username
  sensitive = true
}

output "host" {
  value     = azurerm_kubernetes_cluster.k8s.host
  sensitive = true
}

# output "kube_config" {
#  value     = azurerm_kubernetes_cluster.k8s.kube_config_raw
#  sensitive = true
#}
