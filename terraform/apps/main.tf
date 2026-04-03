module "observability" {
  source      = "./modules/observability"
  environment = "dev"

  providers = {
    kubernetes = kubernetes
    helm       = helm
  }
}

module "fastapi_app" {
  source = "./modules/fastapi-app"

  environment             = "dev"
  monitoring_namespace    = module.observability.monitoring_namespace
  prometheus_release_name = module.observability.prometheus_release_name

  providers = {
    kubernetes = kubernetes
    helm       = helm
  }
}
