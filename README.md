# Cloud-Native Observability Platform on Amazon EKS

A production-grade platform that deploys containerised microservices on Amazon Elastic Kubernetes Service with a fully integrated observability stack. Infrastructure is provisioned entirely through Terraform, applications are packaged with Helm, and every deployment is driven by a GitHub Actions CI/CD pipeline triggered on push to `main`.

**Cluster:** `eks-observability-cluster` &nbsp;|&nbsp; **Region:** `us-east-1` &nbsp;|&nbsp; **IaC:** Terraform >= 1.4.0

## Table of Contents

- [Architecture](#architecture)
- [Repository Structure](#repository-structure)
- [Technology Stack](#technology-stack)
- [Prerequisites](#prerequisites)
- [Infrastructure Provisioning](#infrastructure-provisioning)
- [Application Deployment](#application-deployment)
- [CI/CD Pipeline](#cicd-pipeline)
- [Observability Stack](#observability-stack)
- [Alert Rules](#alert-rules)
- [Access Endpoints](#access-endpoints)
- [Key Engineering Challenges](#key-engineering-challenges)
- [Team](#team)
- [License](#license)

## Architecture

The system is organised into four layers that compose a unified, fully automated platform.

**External Access Layer**
Traffic enters through an NGINX Ingress Controller of type `LoadBalancer`. Path-based routing directs `/` to the static website and `/api` to the FastAPI backend. Monitoring UIs are reachable at `/grafana`, `/prometheus`, and `/alertmanager`.

**CI/CD Layer**
GitHub Actions authenticates to AWS via OpenID Connect (no static credentials stored), builds and pushes Docker images to Amazon ECR tagged by Git commit SHA, updates kubeconfig, and deploys both Helm charts on every push to `main`.

**AWS Infrastructure Layer**
A Virtual Private Cloud (`10.0.0.0/16`) spans two Availability Zones with two public and two private subnets. The EKS cluster and its node group run in private subnets. Outbound internet access for nodes is provided through a NAT Gateway. Terraform state is stored in Amazon S3 with DynamoDB-based state locking.

**Observability Layer**
Prometheus, Grafana, Alertmanager, Blackbox Exporter, Node Exporter, and kube-state-metrics are deployed in the `monitoring` namespace via the `kube-prometheus-stack` Helm chart. The FastAPI application exposes a `/metrics` endpoint, which a `ServiceMonitor` custom resource scrapes every 15 seconds.

```
Internet
    |
    v
NGINX Ingress Controller (LoadBalancer)
    |
    |-- /           --> website (NGINX Alpine, port 80)
    |-- /api        --> fastapi-app (Uvicorn, port 8000)
    |-- /grafana    --> Grafana (port 3000)
    |-- /prometheus --> Prometheus (port 9090)
    |-- /alertmanager --> Alertmanager (port 9093)

EKS Node Group (private subnets)
    |
    |-- default namespace: fastapi-app (x2 replicas), website (x2 replicas)
    |-- monitoring namespace: kube-prometheus-stack, blackbox-exporter
    |-- ingress-nginx namespace: NGINX Ingress Controller
```

## Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml              # GitHub Actions CI/CD pipeline
├── apps/
│   ├── fastapi/
│   │   ├── Dockerfile
│   │   ├── main.py                 # FastAPI app with Prometheus instrumentation
│   │   └── requirements.txt
│   └── website/
│       ├── Dockerfile
│       └── index.html              # Static site served by NGINX
├── helm/
│   ├── fastapi/                    # Helm chart: FastAPI deployment
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── service.yaml
│   │       └── ingress.yaml
│   ├── website/                    # Helm chart: website deployment
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── service.yaml
│   │       └── ingress.yaml
│   ├── kube-prometheus-stack/
│   │   └── values.yaml             # Observability stack overrides
│   └── observability-ingress.yaml  # Ingress for monitoring UIs
└── terraform/
    ├── infra/                      # Layer 1: VPC, EKS, IAM, ECR, Bastion
    │   ├── main.tf
    │   ├── providers.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │   ├── backend.tf
    │   ├── github-oidc.tf
    │   └── modules/
    │       ├── network/
    │       ├── eks/
    │       ├── iam/
    │       ├── ecr/
    │       └── bastion/
    └── apps/                       # Layer 2: Observability, Ingress, Routing
        ├── main.tf
        ├── providers.tf
        ├── backend.tf
        ├── remote-state.tf
        ├── kubernetes-auth.tf
        └── modules/
            ├── observability/
            │   ├── helm-kube-prometheus.tf
            │   ├── fastapi-servicemonitor.tf
            │   ├── fastapi-alerts.tf
            │   ├── website-probe.tf
            │   ├── website-alerts.tf
            │   ├── blackbox-exporter.tf
            │   └── grafana/
            │       └── dashboards/
            │           └── fastapi-golden-signals.json
            ├── ingress-nginx/
            └── observability-routing/
```

## Technology Stack

| Category | Tools |
|---|---|
| Cloud | Amazon Web Services (us-east-1) |
| Orchestration | Amazon EKS, Kubernetes 1.29 |
| Containers | Docker, Amazon ECR |
| IaC | Terraform >= 1.4.0, AWS Provider ~5.0 |
| Package Management | Helm 3 |
| Ingress | NGINX Ingress Controller |
| Backend | FastAPI, Python 3.11-slim, Uvicorn |
| Frontend | NGINX Alpine |
| Metrics | Prometheus, prometheus-fastapi-instrumentator |
| Visualization | Grafana |
| Alerting | Alertmanager (SMTP routing) |
| Probing | Prometheus Blackbox Exporter |
| Cluster Metrics | Node Exporter, kube-state-metrics |
| CI/CD | GitHub Actions |
| Authentication | OpenID Connect, AWS IAM |
| State Backend | Amazon S3 + DynamoDB |

## Prerequisites

Before you begin, ensure the following tools are installed and configured.

- AWS CLI v2, configured with credentials that have sufficient IAM permissions
- Terraform >= 1.4.0
- `kubectl`
- Helm 3
- Docker
- An SSH key pair at `~/.ssh/eks-bastion.pub` (used by the Bastion Host module)
- An S3 bucket and DynamoDB table created for Terraform remote state:
  - Bucket: `eks-observability-tf-state-<account-id>`
  - DynamoDB table: `eks-observability-tf-lock`

## Infrastructure Provisioning

Provisioning is split into two independent Terraform execution layers. The `infra` layer must be applied first. The `apps` layer reads its outputs via remote state.

### Layer 1: Core Infrastructure

```bash
cd terraform/infra

terraform init
terraform plan
terraform apply
```

This provisions the VPC, subnets, Internet Gateway, NAT Gateway, EKS cluster and node group, IAM roles (cluster, node, GitHub Actions), ECR repositories, and Bastion Host.

Once applied, configure local access to the cluster:

```bash
aws eks update-kubeconfig \
  --region us-east-1 \
  --name eks-observability-cluster

kubectl get nodes
```

### Layer 2: Platform Applications

```bash
cd terraform/apps

terraform init
terraform plan
terraform apply
```

This deploys the NGINX Ingress Controller, the full `kube-prometheus-stack`, Blackbox Exporter, ServiceMonitor, PrometheusRule, and Probe custom resources, and all ingress routing for the monitoring UIs.

> **Note:** The `aws-auth` ConfigMap is managed by `terraform/apps/kubernetes-auth.tf`. It maps the EKS node role, Bastion Host role, and GitHub Actions role to the appropriate Kubernetes RBAC groups. This must be applied before the CI/CD pipeline can reach the cluster.

## Application Deployment

Applications can be deployed manually via Helm or automatically through the CI/CD pipeline.

### Manual Helm Deployment

```bash
# FastAPI
helm upgrade --install fastapi-app ./helm/fastapi \
  --namespace default \
  --set image.repository=<account-id>.dkr.ecr.us-east-1.amazonaws.com/eks-observability-fastapi \
  --set image.tag=<tag>

# Website
helm upgrade --install website ./helm/website \
  --namespace default \
  --set image.repository=<account-id>.dkr.ecr.us-east-1.amazonaws.com/eks-observability-website \
  --set image.tag=<tag>
```

### Verify Deployments

```bash
kubectl get pods -n default
kubectl get pods -n monitoring
kubectl get ingress -n default
kubectl get svc -n ingress-nginx
```

## CI/CD Pipeline

The pipeline is defined in `.github/workflows/deploy.yml` and runs automatically on every push to `main`.

**Pipeline Steps**

1. Authenticate to AWS using OpenID Connect via `aws-actions/configure-aws-credentials@v4`. No static credentials are stored in the repository.
2. Log in to Amazon ECR.
3. Build the FastAPI Docker image from `./apps/fastapi` and push it tagged with the commit SHA.
4. Build the Website Docker image from `./apps/website` and push it tagged with the commit SHA.
5. Update kubeconfig to point at `eks-observability-cluster`.
6. Deploy the FastAPI Helm chart with `helm upgrade --install`, passing the ECR repository and commit SHA as image values.
7. Deploy the Website Helm chart with the same approach.

**Required GitHub Repository Setup**

The following must be configured in your repository before the pipeline can run.

GitHub Actions OIDC must be trusted by the IAM role `eks-observability-github-actions-role`. This is provisioned by `terraform/infra/github-oidc.tf` and `terraform/infra/modules/iam/github-actions.tf`.

Set the correct repository in the IAM trust policy condition:

```
token.actions.githubusercontent.com:sub = repo:<your-github-username>/<your-repo-name>:*
```

No repository secrets are required for AWS authentication when using OpenID Connect.

## Observability Stack

All components run in the `monitoring` namespace and are deployed as part of the `kube-prometheus-stack` Helm release.

**Prometheus**
Scrapes metrics from the FastAPI `/metrics` endpoint via a `ServiceMonitor` resource (interval: 15 seconds), along with cluster-wide metrics from Node Exporter and kube-state-metrics. Retention period is 7 days. Alert rules are evaluated continuously from `PrometheusRule` custom resources.

**Grafana**
Loads a custom Golden Signals dashboard at startup via a ConfigMap sidecar. The dashboard covers request rate (RPS), error rate (5xx), P95 latency, P99 latency, FastAPI CPU usage, and FastAPI memory usage. Dashboard definitions live in `terraform/apps/modules/observability/grafana/dashboards/fastapi-golden-signals.json`.

Grafana is configured to serve from the `/grafana` subpath:

```ini
root_url = http://<elb-hostname>/grafana
serve_from_sub_path = true
```

**Alertmanager**
Receives firing alerts from Prometheus, groups them by `alertname`, and routes notifications via SMTP email. Group wait is 10 seconds, repeat interval is 1 hour. Warning and Critical severity levels are supported.

**Blackbox Exporter**
A `Probe` custom resource configures the Blackbox Exporter to send periodic HTTP GET requests to `http://website.default.svc.cluster.local:80/`. If the HTTP probe fails, a `WebsiteDown` alert fires through Alertmanager.

## Alert Rules

| Alert | Condition | Severity | Notes |
|---|---|---|---|
| `FastAPIHighErrorRate` | `sum(rate(http_requests_total{status=~"5.."}[1m])) > 1` | Warning | Fires after 1 minute |
| `FastAPIHighLatency` | P95 latency > 1 second over 5-minute window | Warning | Fires after 1 minute |
| `FastAPIDown` | Zero available replicas for `fastapi-app` deployment | Critical | Fires after 30 seconds |
| `WebsiteDown` | Blackbox HTTP probe returns failure | Critical | Fires after 30 seconds |
| `KubeControllerManagerDown` | Controller Manager not visible inside cluster | Info | Expected on EKS -- managed by AWS |
| `KubeSchedulerDown` | Scheduler not visible inside cluster | Info | Expected on EKS -- managed by AWS |
| `Watchdog` | Always firing | Info | Confirms alerting pipeline is operational |

## Access Endpoints

After the NGINX Ingress Controller provisions an AWS Load Balancer, retrieve its hostname:

```bash
kubectl get svc nginx-ingress-ingress-nginx-controller -n ingress-nginx
```

| Service | Path |
|---|---|
| Static Website | `http://<elb-hostname>/` |
| FastAPI Backend | `http://<elb-hostname>/api/` |
| Grafana | `http://<elb-hostname>/grafana` |
| Prometheus | `http://<elb-hostname>/prometheus` |
| Alertmanager | `http://<elb-hostname>/alertmanager` |

Default Grafana credentials: `admin` / `prom-operator`

## Key Engineering Challenges

A full document covering over 100 challenges and resolutions is available in `docs/challenges-and-learnings.md`. The following is a summary of the most significant ones encountered during this project.

**Cross-module resource referencing in Terraform** -- Direct references between Terraform modules caused plan failures. Resolved by surfacing all required values as explicit outputs from `terraform/infra` and consuming them in `terraform/apps` via `terraform_remote_state`.

**EKS RBAC access failure** -- The cluster was inaccessible to the CI/CD pipeline and Bastion Host because IAM roles were not mapped. Resolved by configuring the `aws-auth` ConfigMap with correct group bindings (`system:masters` for admin roles, `system:nodes` for node roles).

**Custom Resource Definitions not installed before usage** -- `ServiceMonitor` and `PrometheusRule` resources failed to apply because the CRDs had not yet been installed by the kube-prometheus-stack Helm release. Resolved by enforcing ordering with `depends_on` in Terraform.

**FastAPI metrics endpoint absent** -- Prometheus returned no targets for the FastAPI ServiceMonitor. Resolved by adding `prometheus-fastapi-instrumentator` and calling `Instrumentator().instrument(app).expose(app)` in `main.py`.

**Label mismatch in Kubernetes selectors** -- `app: FastAPI` in one place and `app: fastapi` in another silently broke the ServiceMonitor binding. All labels were standardised across Helm templates and values files.

**ImagePullBackOff on worker nodes** -- Pods failed to start because the ECR URI was malformed and the node role lacked `AmazonEC2ContainerRegistryReadOnly`. Both the URI and IAM policy attachment were corrected.

**OpenID Connect setup for GitHub Actions** -- Replaced static AWS access keys with OIDC-based authentication. The GitHub OIDC provider is provisioned by Terraform and the IAM role trust policy is scoped to the specific repository and branch pattern.

**Helm release stuck in failed state** -- A partially failed release blocked all subsequent deployments. The release was deleted manually (`helm delete`) and redeployed with corrected chart values.

**Terraform destroy failures** -- AWS Load Balancers and Elastic Network Interfaces created by Kubernetes remained attached, blocking `terraform destroy`. Kubernetes Ingress and Service resources must be deleted before running destroy so AWS can clean up the associated resources.

**Grafana subpath routing** -- Grafana assets failed to load when served behind an ingress at a non-root path. Resolved by setting `root_url` and `serve_from_sub_path = true` in the `grafana.ini` server block within the Helm values.

## Cleanup

To avoid ongoing AWS charges, destroy resources in reverse order.

```bash
# 1. Delete Kubernetes workloads that create AWS resources (ELBs, ENIs)
kubectl delete ingress --all -n default
kubectl delete ingress --all -n monitoring
kubectl delete svc -n ingress-nginx nginx-ingress-ingress-nginx-controller

# 2. Destroy apps layer
cd terraform/apps
terraform destroy

# 3. Destroy infra layer
cd terraform/infra
terraform destroy
```

## Screenshots / Demonstration

This section highlights the **end-to-end system behavior**, from user access to observability and alerting.

### **Application (Frontend & API)**

<p align="center">
  <img src="docs/images/website.png" width="100%"><br>
  <b>Figure:</b> <i>Frontend application exposed via Kubernetes Ingress (public ALB URL)</i>
</p>

<p align="center">
  <img src="docs/images/api-response.png" width="100%"><br>
  <b>Figure:</b> <i>FastAPI backend responding successfully via public endpoint</i>
</p>



### **CI/CD Pipeline**

<p align="center">
  <img src="docs/images/github-actions.png" width="100%"><br>
  <b>Figure:</b> <i>GitHub Actions pipeline automatically building, pushing to ECR, and deploying to EKS</i>
</p>



### **Kubernetes Ingress (Public Access)**

<p align="center">
  <img src="docs/images/Kubernetes Ingress Routing.png" width="100%"><br>
  <b>Figure:</b> <i>Ingress routing traffic from external ALB to services inside the Kubernetes cluster</i>
</p>



### **Observability — Request → Metrics Correlation**

<p align="center">
  <img src="docs/images/End-to-End Request → Metrics Correlation (Before).png" width="100%"><br>
  <b>Figure:</b> <i>Traffic generation directly reflected in metrics, validating observability pipeline</i>
</p>



### **Prometheus Metrics Validation**

<p align="center">
  <img src="docs/images/Prometheus Query (Metrics Validation).png" width="100%"><br>
  <b>Figure:</b> <i>Prometheus querying real-time metrics (request rate) from instrumented FastAPI service</i>
</p>



### **Alerting Pipeline (Real-time Firing)**

<p align="center">
  <img src="docs/images/alert-email-notification-firing.png" width="100%"><br>
  <b>Figure:</b> <i>Real-time alert triggered and delivered via email when system thresholds are breached</i>
</p>


### **Grafana dashboard (FastApi)**

<p align="center">
  <img src="docs/images/grafana-dashboard.png" width="100%"><br>
  <b>Figure:</b> <i>Grafana dashboard visualizing FastAPI Golden Signals — request rate, latency (P95/P99), error rate, and resource usage (CPU & memory) in real time</i>
</p>


## Team

**Abhay Kumar Saini** -- Infrastructure design and provisioning (Terraform, EKS), observability stack deployment, Prometheus and Alertmanager configuration, Grafana dashboard authoring, CI/CD pipeline setup with OpenID Connect.

**Abhijeet Kumar** -- FastAPI backend application with Prometheus instrumentation, static website, Docker image configuration, and Kubernetes integration.

**Vaibhav Sarkar** -- Helm chart development for FastAPI and website, Kubernetes resource configuration, failure simulation and load testing, end-to-end alerting validation.

Bachelor of Technology -- Computer Science and Engineering, Academic Session 2025-26.

## License

Released under the [MIT License](LICENSE). Permission is granted to use, copy, modify, and distribute this software with proper attribution to the original authors.
