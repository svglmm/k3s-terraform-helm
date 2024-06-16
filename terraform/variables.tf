variable "prometheus_namespace" {
  default = "prometheus"
}

variable "prometheus_helm_name" {
  default     = "prometheus"
}

variable "prometheus_helm_release" {
  default     = "kube-prometheus-stack"
}

variable "prometheus_helm_repository" {
  default     = "https://prometheus-community.github.io/helm-charts"
}

variable "prometheus_chart_version" {
  default = "57.0.1"
}


variable "wordpress_namespace" {
  default = "wordpress"
}

variable "wordpress_helm_name" {
  default     = "wordpress"
}

variable "wordpress_helm_release" {
  default     = "wordpress"
}

variable "wordpress_helm_repository" {
  default     = "https://charts.bitnami.com/bitnami"
}

variable "wordpress_chart_version" {
  default = "22.2.2"
}

variable "wordpress_chart_version" {
  description = "KUBECONFIG full path"
}