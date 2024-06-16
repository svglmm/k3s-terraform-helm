resource "helm_release" "prometheus" {
  name       = var.prometheus_helm_name
  repository = var.prometheus_helm_repository
  chart      = var.prometheus_helm_release
  version    = var.prometheus_chart_version
  namespace  = var.prometheus_namespace
  create_namespace = true
  timeout = 2000
}

resource "helm_release" "wordpress" {
  name       = var.wordpress_helm_name
  repository = var.wordpress_helm_repository
  chart      = var.wordpress_helm_release
  version    = var.wordpress_chart_version
  namespace  = var.wordpress_namespace
  create_namespace = true
  timeout = 2000
  

set {
    name  = "service.type"
    value = "ClusterIP"
  }
}
