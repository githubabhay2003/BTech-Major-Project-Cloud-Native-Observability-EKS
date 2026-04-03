resource "helm_release" "fastapi" {
  name      = "fastapi"
  namespace = var.monitoring_namespace
  chart     = "../helm/fastapi"
}
