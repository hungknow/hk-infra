provider "helm" {
  kubernetes {
    host                   = azurerm_kubernetes_cluster.your_cluster.kube_config.0.host
    client_key             = base64decode(azurerm_kubernetes_cluster.your_cluster.kube_config.0.client_key)
    client_certificate     = base64decode(azurerm_kubernetes_cluster.your_cluster.kube_config.0.client_certificate)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.your_cluster.kube_config.0.cluster_ca_certificate)
  }
}

resource "helm_release" "nginx" {
  name       = "nginx-ingress_${var.env}"
  repository = local.helm_repository
  chart      = local.helm_chart
  namespace  = var.namespace
  version    = "4.5.2"

  set {
    name  = "controller.kind"
    value = "DaemonSet"
  }
}
