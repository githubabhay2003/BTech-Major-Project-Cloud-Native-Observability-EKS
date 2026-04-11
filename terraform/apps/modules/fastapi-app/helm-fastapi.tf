resource "helm_release" "fastapi" {
  name      = "fastapi"
  namespace = var.app_namespace
  chart     = abspath("${path.root}/../../helm/fastapi")

  values = [
    yamlencode({
      image = {
        repository = var.ecr_repository_url
        tag        = "latest"
      }
    })
  ]
}
