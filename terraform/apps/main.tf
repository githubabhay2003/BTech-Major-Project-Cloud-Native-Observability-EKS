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
  app_namespace           = "observability"
  prometheus_release_name = module.observability.prometheus_release_name
  ecr_repository_url = data.terraform_remote_state.infra.outputs.ecr_repository_url
  providers = {
    kubernetes = kubernetes
    helm       = helm
  }

  depends_on = [
    module.observability
  ]
}
