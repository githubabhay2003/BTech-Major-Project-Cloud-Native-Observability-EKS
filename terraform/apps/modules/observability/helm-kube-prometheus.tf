resource "helm_release" "kube_prometheus_stack" {
  name       = "kube-prometheus-stack"
  namespace  = "monitoring"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = "81.2.2"

  depends_on = [
    kubernetes_namespace_v1.monitoring
  ]

  values = [
    yamlencode({

      grafana = {
        adminUser     = "admin"
        adminPassword = "prom-operator"

        "grafana.ini" = {
          server = {
            root_url            = "http://a6b30234174294ddc819d213eac8e371-1913973493.us-east-1.elb.amazonaws.com/grafana"
            serve_from_sub_path = true
          }
        }

        sidecar = {
          dashboards = {
            enabled           = true
            label             = "grafana_dashboard"
            folder            = "/var/lib/grafana/dashboards/default"
            defaultFolderName = "default"
            searchNamespace   = "ALL"
          }
        }

        dashboardProviders = {
          "dashboardproviders.yaml" = {
            apiVersion = 1
            providers = [{
              name            = "default"
              orgId           = 1
              folder          = ""
              type            = "file"
              disableDeletion = false
              editable        = true
              options = {
                path = "/var/lib/grafana/dashboards/default"
              }
            }]
          }
        }
      }

      prometheus = {
        prometheusSpec = {
          externalUrl = "http://a6b30234174294ddc819d213eac8e371-1913973493.us-east-1.elb.amazonaws.com/prometheus"
          routePrefix = "/prometheus"
        }
      }

      alertmanager = {
        enabled = true

        alertmanagerSpec = {
          externalUrl = "http://a6b30234174294ddc819d213eac8e371-1913973493.us-east-1.elb.amazonaws.com/alertmanager"
          routePrefix = "/alertmanager"
        }

        config = {
          global = {}

          route = {
            receiver        = "null-receiver"
            group_by        = ["alertname"]
            group_wait      = "30s"
            group_interval  = "5m"
            repeat_interval = "4h"
          }

          receivers = [
            {
              name = "null"
            },
            {
              name = "null-receiver"

              webhook_configs = [
                {
                  url = "http://127.0.0.1:5001/"
                }
              ]
            }
          ]
        }
      }

    })
  ]
}
