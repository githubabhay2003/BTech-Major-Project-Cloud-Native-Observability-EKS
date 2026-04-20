# Cloud-Native Observability Platform on Amazon Elastic Kubernetes Service (EKS)
![AWS](https://img.shields.io/badge/AWS-EKS%20%7C%20ECR%20%7C%20IAM-orange?logo=amazonaws)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-blue?logo=kubernetes)
![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform)
![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-black?logo=githubactions)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED?logo=docker)
![Observability](https://img.shields.io/badge/Observability-Prometheus%20%7C%20Grafana%20%7C%20Alertmanager-red)
![FastAPI](https://img.shields.io/badge/Backend-FastAPI-009688?logo=fastapi)
![Nginx](https://img.shields.io/badge/Web-Nginx-009639?logo=nginx)
![Status](https://img.shields.io/badge/Status-Production--Ready-brightgreen)

### 🎓 Major Project (B.Tech CSE - 8th Semester)
**Institution:** Jagannath University (Faculty of Engineering and Technology)  
**Academic Session:** 2025–26  

### 👨‍💻 Team Members
- Abhay Kumar Saini (0201220001)
- Abhijeet Kumar (0201220002)
- Vaibhav Sarkar (0201220150)

### 👨‍🏫 Project Guide
- Prof. (Dr.) Om Prakash Sharma

---

## 🚀 Quick Overview

This project implements a **cloud-native observability platform on Amazon Elastic Kubernetes Service (Amazon EKS)**, showcasing how modern applications can be **automated, deployed, and monitored at scale**.

It integrates **containerization, Kubernetes orchestration, CI/CD automation, and observability** into a unified end-to-end system.

---

### **What This Project Includes**

- Backend API built with **FastAPI**
- Static frontend served via **NGINX**
- Containerized applications deployed on **Amazon EKS**
- Infrastructure provisioned using **Terraform (Infrastructure as Code)**
- Deployment automated using **Helm and GitHub Actions (CI/CD)**

---

### **Core Capabilities**

- 📦 Containerized application deployment  
- ☁️ Automated cloud infrastructure provisioning  
- 🔄 CI/CD pipeline (build → push → deploy)  
- 📊 Real-time monitoring with Prometheus & Grafana  
- 🚨 Alerting via Alertmanager  
- 🌐 Ingress-based routing for external access  

---

### **Why This Project Matters**

Modern systems require more than deployment — they need **visibility, reliability, and automation**.

This project demonstrates how to:
- Monitor system performance in real time  
- Detect failures early  
- Maintain reliability in a cloud-native environment  

---

### **In One Line**

> A cloud-native platform that automates deployment and provides real-time observability using modern DevOps practices.

---

## 🧠 Problem & Solution

### **Problem**

Modern cloud-native applications use microservices and containers, which makes them scalable but also harder to manage.

Common challenges include:
- Limited visibility into system performance  
- Delayed detection of failures  
- Lack of centralized monitoring and alerting  
- Complex and manual deployment processes  

Without proper observability, issues like high error rates or slow APIs can go unnoticed until they impact users.

---

### **Solution**

This project solves these challenges by building a **fully automated and observable cloud-native platform on Amazon EKS**.

It integrates:

- **Terraform (Infrastructure as Code)** → Automated and consistent infrastructure setup  
- **GitHub Actions (CI/CD)** → Automated build and deployment pipeline  
- **Kubernetes (EKS)** → Scalable application orchestration  
- **Helm** → Simplified and versioned deployments  
- **Prometheus + Grafana + Alertmanager** → Real-time monitoring, visualization, and alerting  

---

### **Key Objectives**

- Build a containerized application environment using Docker and Kubernetes  
- Automate infrastructure provisioning using Terraform  
- Implement CI/CD for continuous deployment  
- Enable real-time observability and monitoring  
- Configure alerting for proactive issue detection  
- Simulate a production-like cloud-native system  

---

### **Outcome**

The system enables:
- Automated deployments with minimal manual effort  
- Real-time visibility into application and infrastructure metrics  
- Faster detection and resolution of system issues  

---

## 🏗️ Architecture Overview

📄 Detailed Architecture: [docs/architecture.md](docs/architecture.md)

---

### **Architecture Diagram**

<p align="center">
  <img src="docs/images/architecture-image.png" width="100%"><br>
  <b>Figure:</b> <i>End-to-End Architecture of the Cloud-Native Observability Platform on Amazon EKS</i>
</p>

---

### **High-Level Design**

The system follows a **layered cloud-native architecture**, ensuring modularity, scalability, and clear separation of responsibilities.

---

### **Architecture Layers**

#### **1. External Layer**
- Users access the system via a web browser  
- Developers push code to GitHub, triggering automation  

---

#### **2. CI/CD Layer**
- GitHub Actions builds and deploys applications  
- Docker images are pushed to Amazon ECR  
- Helm deploys applications to EKS  
- OIDC ensures secure authentication  

---

#### **3. Infrastructure & Application Layer**
- AWS VPC with public/private subnets ensures secure networking  
- Amazon EKS runs containerized applications  
- NGINX Ingress routes traffic:
  - `/` → Website  
  - `/api` → FastAPI  

- Applications:
  - FastAPI backend (API + metrics)  
  - Static website frontend  

---

#### **4. Observability Layer**
- Prometheus → Metrics collection  
- Grafana → Visualization dashboards  
- Alertmanager → Alert notifications  
- Blackbox Exporter → External uptime monitoring  

---

### **End-to-End Flow**

1. Developer pushes code → CI/CD pipeline triggered  
2. Application is built and deployed to EKS  
3. Users access services via Ingress  
4. Prometheus collects metrics  
5. Grafana visualizes system performance  
6. Alerts are triggered when thresholds are exceeded  

---

### **Summary**

> A layered architecture that integrates deployment, infrastructure, and observability into a single automated and scalable system.

---
## 6. Technology Stack

### **Overview**

The project uses a combination of **cloud services, DevOps tools, and monitoring technologies** to build a complete cloud-native observability platform.

The technologies are organized below based on their roles in the system.

---

### **Technology Stack Table**

| **Category**                     | **Technology**                          | **Description / Purpose**                                                  |
| -------------------------------- | --------------------------------------- | -------------------------------------------------------------------------- |
| **Cloud Provider**               | Amazon Web Services (AWS)               | Provides scalable cloud infrastructure and managed services                |
| **Container Orchestration**      | Amazon Elastic Kubernetes Service (EKS) | Managed Kubernetes service to deploy and manage containerized applications |
| **Containerization**             | Docker                                  | Packages applications into containers for consistency and portability      |
| **Infrastructure as Code (IaC)** | Terraform                               | Automates provisioning of cloud resources like VPC, EKS, IAM               |
| **CI/CD Pipeline**               | GitHub Actions                          | Automates build, push, and deployment workflows                            |
| **Container Registry**           | Amazon Elastic Container Registry (ECR) | Stores Docker images securely                                              |
| **Backend Framework**            | FastAPI                                 | Lightweight Python framework for building APIs                             |
| **Web Server**                   | NGINX                                   | Serves the static website and acts as a reverse proxy                      |
| **Package Manager (Kubernetes)** | Helm                                    | Simplifies Kubernetes application deployment and management                |
| **Ingress Controller**           | NGINX Ingress Controller                | Routes external traffic to internal Kubernetes services                    |
| **Monitoring System**            | Prometheus                              | Collects and stores application and system metrics                         |
| **Visualization Tool**           | Grafana                                 | Displays metrics using dashboards                                          |
| **Alerting System**              | Alertmanager                            | Sends alerts based on defined conditions                                   |
| **Blackbox Monitoring**          | Prometheus Blackbox Exporter            | Monitors external service availability (e.g., website uptime)              |
| **Kubernetes Monitoring CRDs**   | ServiceMonitor, PrometheusRule, Probe   | Custom resources for integrating monitoring and alerting                   |
| **Version Control**              | GitHub                                  | Hosts source code and triggers CI/CD pipeline                              |
| **Authentication**               | OpenID Connect (OIDC)                   | Enables secure authentication between GitHub Actions and AWS               |
| **State Management**             | Amazon S3                               | Stores Terraform state files                                               |
| **State Locking**                | Amazon DynamoDB                         | Prevents concurrent Terraform executions                                   |
| **Compute Instance**             | Bastion Host (EC2)                      | Provides secure administrative access to the cluster                       |

---

### **Key Takeaway**

> The technology stack combines modern DevOps, cloud, and observability tools to create a fully automated and production-ready environment.

---
## 9. CI/CD Pipeline

### **Overview**

The project uses a **CI/CD pipeline (Continuous Integration and Continuous Deployment)** implemented with **GitHub Actions** to automate the entire application deployment process.

This pipeline ensures that every code change is:

* Automatically built
* Tested (implicitly via build success)
* Deployed to the Kubernetes cluster

👉 This reduces manual effort and improves reliability.

---

## **Key Components of the Pipeline**

| **Component**                               | **Role**                                     |
| ------------------------------------------- | -------------------------------------------- |
| **GitHub**                                  | Source code repository and trigger point     |
| **GitHub Actions**                          | Executes the CI/CD workflow                  |
| **Docker**                                  | Builds container images                      |
| **Amazon ECR (Elastic Container Registry)** | Stores Docker images                         |
| **Amazon EKS**                              | Runs the deployed applications               |
| **Helm**                                    | Manages Kubernetes deployments               |
| **OIDC (OpenID Connect)**                   | Secure authentication between GitHub and AWS |

---

## **Pipeline Trigger**

* The pipeline is triggered when:

  * Code is pushed to the **main branch**

👉 This ensures continuous deployment of the latest changes

---

## **Step-by-Step Pipeline Workflow**

### **1. Code Checkout**

* GitHub Actions fetches the latest code from the repository

---

### **2. AWS Authentication (OIDC)**

* Uses **OpenID Connect (OIDC)** to securely assume an AWS IAM role
* No hardcoded credentials are required

👉 Enhances security and follows best practices

---

### **3. Docker Image Build**

Two images are built:

* **FastAPI Application Image**
* **Website Image**

Each image is:

* Built using its respective Dockerfile
* Tagged with the **commit SHA** (unique identifier)

---

### **4. Push Images to Amazon ECR**

* Images are pushed to:

  * Amazon Elastic Container Registry (ECR)

👉 Makes images available for deployment in Kubernetes

---

### **5. Connect to EKS Cluster**

* The pipeline updates **kubeconfig** using AWS CLI
* This allows GitHub Actions to interact with the Kubernetes cluster

---

### **6. Helm Deployment**

* Applications are deployed using **Helm charts**

* Commands used:

  * `helm upgrade --install`

* Dynamic values passed:

  * Image repository
  * Image tag (commit SHA)

👉 Enables versioned and repeatable deployments

---

## **Deployment Strategy**

* Uses **rolling updates** (default Kubernetes behavior)
* Ensures:

  * Zero downtime
  * Smooth updates

---

## **Pipeline Flow Summary**

1. Developer pushes code to GitHub
2. GitHub Actions pipeline starts
3. Docker images are built
4. Images are pushed to ECR
5. Helm deploys applications to EKS
6. Updated application becomes live

---

### **Key Advantages**

* 🔄 **Automation** → No manual deployment required
* 🔐 **Security** → Uses OIDC instead of static credentials
* 📦 **Version Control** → Image tagging with commit SHA
* ⚡ **Fast Deployment** → Changes go live quickly
* 🔁 **Consistency** → Same process for every deployment

---

### **In Simple Words**

> The CI/CD pipeline automatically takes your code, turns it into a running application, and deploys it to the cloud every time you make a change.

---

## 10. Kubernetes Deployment (Helm)

### **Overview**

In this project, applications are deployed on Kubernetes using **Helm**, a package manager for Kubernetes that simplifies deployment and management of applications.

Helm allows us to:

* Define Kubernetes resources as reusable templates
* Manage configurations easily
* Perform upgrades and rollbacks efficiently

👉 This makes deployments **consistent, scalable, and maintainable**

---

## **What is Helm (Simple Explanation)**

Helm works like a package manager (similar to npm or apt), but for Kubernetes.

* A **Helm Chart** is a collection of Kubernetes YAML templates
* It allows dynamic configuration using values

---

## **Helm Charts Used in the Project**

The project uses two custom Helm charts:

| **Application** | **Chart Location** | **Purpose**                 |
| --------------- | ------------------ | --------------------------- |
| FastAPI Backend | `helm/fastapi`     | Deploys backend API service |
| Website         | `helm/website`     | Deploys static frontend     |

---

## **Key Kubernetes Resources Created**

Each Helm chart defines the following core resources:

---

### **1. Deployment**

* Manages application pods
* Ensures desired number of replicas are running

**FastAPI Example:**

* Multiple replicas for scalability
* Includes:

  * **Liveness Probe** → checks if app is alive
  * **Readiness Probe** → checks if app is ready to serve traffic

👉 Helps Kubernetes automatically recover from failures

---

### **2. Service**

* Exposes the application internally within the cluster
* Uses:

  * **ClusterIP** (internal access)

👉 Enables communication between services

---

### **3. Ingress**

* Provides external access to services via HTTP/HTTPS
* Managed by **NGINX Ingress Controller**

**Routing Rules:**

* `/` → Website
* `/api` → FastAPI backend

👉 Acts as a **single entry point** for users

---

## **Configuration Using Values.yaml**

Each Helm chart uses a `values.yaml` file to define:

* Number of replicas
* Container image details
* Ports
* Labels

Example:

* FastAPI runs on port **8000**
* Website runs on port **80**

👉 Allows easy customization without modifying templates

---

## **Dynamic Deployment via CI/CD**

During deployment, Helm receives dynamic values:

* Image repository (from ECR)
* Image tag (commit SHA)

This ensures:

* Every deployment uses the latest image
* Version tracking is maintained

---

## **Deployment Command**

The CI/CD pipeline uses:

```
helm upgrade --install <release-name> <chart-path>
```

This command:

* Installs the application if not present
* Upgrades it if already deployed

---

## **Deployment Workflow**

1. Helm reads chart templates
2. Values are injected dynamically
3. Kubernetes resources are created/updated
4. Pods are scheduled and started
5. Services and ingress expose the application

---

## **Key Benefits of Using Helm**

* 📦 **Reusability** → Templates can be reused across environments
* 🔄 **Easy Updates** → Upgrade without downtime
* ⚙️ **Configuration Management** → Centralized values
* 📊 **Scalability** → Easily adjust replicas
* 🔁 **Rollback Support** → Revert to previous versions

---

### **In Simple Words**

> Helm simplifies Kubernetes deployment by packaging everything into reusable templates, making application deployment fast, consistent, and easy to manage.

---

## 11. Observability Implementation

### **Overview**

Observability is a key part of this project. It ensures that the system is not only running, but also **measurable, visible, and understandable in real time**.

The project implements observability using three main pillars:

* **Metrics** → What is happening in the system
* **Visualization** → How the system is performing
* **Alerting** → When something goes wrong

This is achieved using:

* **Prometheus**
* **Grafana**
* **Alertmanager**

---

## **1. Metrics Collection (Prometheus)**

### **What is Prometheus?**

Prometheus is an open-source monitoring system that:

* Collects metrics from applications
* Stores them as time-series data
* Allows querying using PromQL (Prometheus Query Language)

---

### **How Metrics are Collected**

#### **FastAPI Instrumentation**

* The FastAPI application is instrumented using:

  * `prometheus-fastapi-instrumentator`

* It exposes a `/metrics` endpoint automatically

👉 This endpoint provides data such as:

* Request count
* Response status codes
* Request latency

---

#### **Service Monitoring (ServiceMonitor)**

* A **ServiceMonitor** resource is created in Kubernetes
* It tells Prometheus:

  * Which service to monitor
  * Where to scrape metrics from

**Configuration Highlights:**

* Scrape interval: 15 seconds
* Target: FastAPI service

---

#### **Kubernetes Metrics**

Prometheus also collects:

* CPU usage
* Memory usage
* Pod and node metrics

---

## **2. Visualization (Grafana)**

### **What is Grafana?**

Grafana is a visualization tool that:

* Connects to Prometheus
* Displays data using dashboards

---

### **Custom Dashboard (Golden Signals)**

A custom dashboard is created to monitor key system metrics:

#### **Golden Signals Covered**

| **Metric**             | **Description**               |
| ---------------------- | ----------------------------- |
| **Traffic (RPS)**      | Number of requests per second |
| **Error Rate**         | Rate of failed (5xx) requests |
| **Latency (P95, P99)** | Response time distribution    |
| **CPU Usage**          | Resource utilization          |
| **Memory Usage**       | Memory consumption            |

👉 These metrics provide a **complete view of system health**

---

### **Dashboard Deployment**

* Dashboards are defined as JSON
* Stored in a Kubernetes **ConfigMap**
* Automatically loaded into Grafana using a sidecar

---

## **3. External Monitoring (Blackbox Exporter)**

### **Purpose**

* Monitors **service availability from outside the system**

---

### **How it Works**

* Sends HTTP requests to the website

* Measures:

  * Response success
  * Availability

* Uses a **Probe resource** to define:

  * Target URL
  * Check interval

---

## **4. Alerting Integration (Overview)**

* Prometheus evaluates predefined rules
* Alerts are sent to **Alertmanager**
* Notifications are delivered via email

👉 Detailed alert logic is covered in the next section

---

## **5. Observability Flow**

1. FastAPI exposes metrics (`/metrics`)
2. Prometheus scrapes metrics periodically
3. Data is stored as time-series
4. Grafana queries and visualizes data
5. Alerts are triggered if thresholds are exceeded

---

## **Key Design Principles**

* **Built-in Observability** → Metrics integrated into the application
* **Real-Time Monitoring** → Continuous data collection
* **Actionable Insights** → Dashboards + alerts
* **External Validation** → Blackbox monitoring

---

### **In Simple Words**

> Observability in this project ensures that you can see how your system is performing, understand what is happening inside it, and get alerted immediately when something goes wrong.

---
## 14. Screenshots / Demonstration

### **Overview**

This section presents how the system can be visually demonstrated. Although actual screenshots are not included here, the following describes the key components and what should be observed during a live demonstration.

These demonstrations help validate that:

* The system is running correctly
* Monitoring and alerting are functional
* All components are properly integrated

---

## **1. Application Access (Frontend & API)**

### **Website (Frontend)**

* Accessed via browser using the Ingress endpoint
* Displays:

  * Project overview
  * Architecture summary
  * Features

👉 Demonstrates successful deployment and routing

---

### **FastAPI Backend**

* Accessible via:

  * `/api` → main endpoint
  * `/health` → health check

Expected Output:

* JSON response confirming service availability

👉 Confirms backend service is operational

---

## **2. Grafana Dashboard**

### **What to Demonstrate**

* Open Grafana via:

  * `/grafana` endpoint

* Show **Golden Signals Dashboard**:

  * Request rate (RPS)
  * Error rate
  * Latency (P95, P99)
  * CPU and memory usage

👉 Demonstrates real-time monitoring and visualization

---

## **3. Prometheus Metrics**

### **What to Demonstrate**

* Access Prometheus via:

  * `/prometheus`

* Run sample queries:

  * Request rate
  * Error rate
  * Latency metrics

👉 Shows raw metrics collection and querying capability

---

## **4. Alertmanager Interface**

### **What to Demonstrate**

* Access via:

  * `/alertmanager`

* Show:

  * Active alerts
  * Alert history
  * Alert status (firing/resolved)

👉 Confirms alerting system is functioning

---

## **5. Alert Demonstration (Optional)**

You can simulate alerts by:

* Generating high traffic → triggers latency alerts
* Stopping a pod → triggers “service down” alert

👉 Demonstrates real-time alert triggering and notification

---

## **6. Kubernetes Resources**

### **What to Demonstrate**

Using `kubectl`:

* List pods:

  * `kubectl get pods`

* Check services and ingress:

  * `kubectl get svc`
  * `kubectl get ingress`

👉 Confirms deployment and orchestration

---

## **7. CI/CD Pipeline Execution**

### **What to Demonstrate**

* Show GitHub Actions workflow:

  * Successful pipeline run
  * Image build and push steps
  * Deployment logs

👉 Demonstrates automation in action

---

## **Suggested Screenshots (for Report)**

If adding visuals later, include:

1. Grafana dashboard (Golden Signals)
2. Prometheus query interface
3. Alertmanager alerts page
4. Website homepage
5. GitHub Actions pipeline success screen
6. Kubernetes pods/services output

---

### **In Simple Words**

> This section shows how the system looks and behaves in real time, proving that all components—from deployment to monitoring—are working correctly.

---

## 15. Setup & Deployment Guide

### **Overview**

This section provides a high-level guide to set up and deploy the project.  
For a **complete step-by-step detailed guide**, refer to:

📄 <b>Detailed Setup Guide:</b>  
<a href="https://github.com/githubabhay2003/BTech-Major-Project-Cloud-Native-Observability-EKS/blob/main/docs/setup-and-usage-guide.md" target="_blank">
Setup & Usage Guide
</a>

> It is strongly recommended to follow the detailed guide for actual implementation, as it includes exact commands, validations, and troubleshooting steps.

---

## **1. Prerequisites**

Before starting, ensure your system is properly configured.

### **Required Tools**

* Git
* AWS CLI (Amazon Web Services Command Line Interface)
* kubectl (Kubernetes CLI)
* Docker
* Terraform
* Helm

### **AWS Setup**

* Create an AWS account
* Configure AWS CLI using access keys
* Ensure required permissions (IAM roles) are available

👉 These tools enable interaction with cloud infrastructure and Kubernetes

---

## **2. Project Setup Workflow**

The deployment process follows a structured sequence. Each step builds on the previous one.

---

### **Step 1: Clone the Repository**

* Download the project from GitHub
* Navigate into the project directory

---

### **Step 2: Provision Infrastructure (Terraform - Infra Layer)**

* Navigate to:

  ```
  terraform/infra
  ```
* Run:

  * `terraform init`
  * `terraform plan`
  * `terraform apply`

This creates:

* VPC (networking)
* EKS cluster
* IAM roles
* ECR repository
* Bastion host

---

### **Step 3: Configure Kubernetes Access**

* Connect local system to EKS:

  ```
  aws eks update-kubeconfig
  ```

* Verify:

  ```
  kubectl get nodes
  ```

👉 Ensures Kubernetes cluster is accessible

---

### **Step 4: Deploy Platform Components (Terraform - Apps Layer)**

* Navigate to:

  ```
  terraform/apps
  ```

* Deploy:

  * Ingress Controller
  * Prometheus, Grafana, Alertmanager
  * Blackbox exporter

👉 Sets up the observability environment

---

### **Step 5: Trigger Application Deployment (CI/CD)**

* Push code to GitHub:

  ```
  git push
  ```

* GitHub Actions automatically:

  * Builds Docker images
  * Pushes to ECR
  * Deploys via Helm

👉 No manual deployment required

---

### **Step 6: Verify Deployment**

Run:

```
kubectl get pods
kubectl get services
kubectl get ingress
```

Expected:

* FastAPI and Website pods running
* Services and ingress created

---

### **Step 7: Access the Application**

Retrieve LoadBalancer URL:

```
kubectl get svc -n ingress-nginx
```

Access via browser:

| **URL Path**    | **Service**       |
| --------------- | ----------------- |
| `/`             | Website           |
| `/api`          | FastAPI           |
| `/grafana`      | Grafana Dashboard |
| `/prometheus`   | Prometheus UI     |
| `/alertmanager` | Alertmanager UI   |

---

## **3. Observability Testing**

To validate monitoring and alerting:

### **Simulate Failures**

* Stop FastAPI:

  ```
  kubectl scale deployment fastapi-app --replicas=0
  ```

* Stop Website:

  ```
  kubectl scale deployment website --replicas=0
  ```

Expected:

* Alerts triggered in Prometheus
* Notifications sent via Alertmanager

---

## **4. Teardown (Important)**

After testing, destroy resources to avoid AWS charges.

### **Steps**

1. Delete Kubernetes ingress and LoadBalancers
2. Destroy apps layer:

   ```
   terraform destroy
   ```
3. Destroy infrastructure:

   ```
   terraform destroy
   ```

👉 Ensures no ongoing costs

---

## **5. Important Notes**

* ⚠️ AWS services like EKS and NAT Gateway may incur charges
* Always destroy resources after use
* Allow time for AWS resources (like LoadBalancers) to be cleaned up

---

### **In Simple Words**

> This guide helps you set up the entire system from scratch, deploy it automatically, test monitoring features, and safely clean everything afterward.

---

## 16. Challenges & Learnings

---

### **Overview**

This project involved multiple layers including **Terraform, Kubernetes, CI/CD, and Observability**, which introduced several real-world challenges.

For a **complete and detailed list of all challenges (100+ cases)**, refer to:

📄 <b>Detailed Challenges & Learnings:</b>  
<a href="https://github.com/githubabhay2003/BTech-Major-Project-Cloud-Native-Observability-EKS/blob/main/docs/challenges-and-learnings.md" target="_blank">
Challenges & Learnings Guide
</a>

> The table below highlights only the **most important and impactful challenges**, structured similarly to the provided document.

---

## **Key Challenges (Summary Table)**

| **#** | **Challenge Title**                       | **Description**                                                             | **Root Cause**                                  | **Solution / Approach**                                          | **Related Component**   |
| ----- | ----------------------------------------- | --------------------------------------------------------------------------- | ----------------------------------------------- | ---------------------------------------------------------------- | ----------------------- |
| 1     | Cross-module resource referencing failure | Terraform execution failed when modules tried to access each other directly | Modules are isolated by design                  | Used outputs from infra layer and passed as inputs to apps layer | Terraform (Modules)     |
| 2     | EKS access not working (RBAC issue)       | Cluster access failed for users and CI/CD                                   | IAM roles not mapped in Kubernetes              | Configured `aws-auth` ConfigMap for RBAC mapping                 | EKS (Authentication)    |
| 3     | Remote state dependency issues            | Apps layer couldn’t fetch infra outputs                                     | Incorrect remote state configuration            | Fixed `terraform_remote_state` with correct backend and outputs  | Terraform (State Mgmt)  |
| 4     | Helm deployment failures (YAML errors)    | Deployment failed despite correct logic                                     | YAML formatting issues (indentation, syntax)    | Validated and corrected YAML before deployment                   | Helm                    |
| 5     | CRDs not installed before usage           | Observability resources failed (ServiceMonitor, PrometheusRule)             | CRDs missing before dependent resources         | Ensured correct order using dependencies (`depends_on`)          | Kubernetes (CRDs)       |
| 6     | FastAPI metrics not available             | Prometheus couldn’t scrape application metrics                              | `/metrics` endpoint not implemented             | Added Prometheus instrumentation and metrics endpoint            | FastAPI (Observability) |
| 7     | Label mismatch in Kubernetes              | Prometheus couldn’t discover services                                       | Case-sensitive label mismatch                   | Standardized labels (e.g., `app: fastapi`)                       | Kubernetes (Labels)     |
| 8     | Image pull failures (ImagePullBackOff)    | Pods failed to start                                                        | Incorrect image URI or missing permissions      | Fixed ECR URI and IAM permissions for nodes                      | Kubernetes / ECR        |
| 9     | CI/CD authentication complexity           | Difficulty securing AWS access from GitHub                                  | Confusion between static credentials vs OIDC    | Implemented OIDC-based authentication                            | AWS IAM / CI-CD         |
| 10    | Helm release stuck in failed state        | Deployment blocked due to previous failed release                           | Stale Helm metadata                             | Cleaned up failed release and redeployed                         | Helm                    |
| 11    | Ingress routing issues (503 / 404 errors) | Services not accessible via browser                                         | Namespace mismatch and routing misconfiguration | Unified ingress and corrected routing rules                      | Kubernetes (Ingress)    |
| 12    | Alert pipeline not working end-to-end     | Alerts triggered but not delivered                                          | Misconfigured Alertmanager endpoints            | Validated pipeline using failure simulation                      | Observability           |
| 13    | State drift between tools                 | System became inconsistent over time                                        | Multiple tools managing same resources          | Defined Terraform as single source of truth                      | Terraform / Kubernetes  |
| 14    | Non-reproducible deployments              | Different results across runs                                               | Manual steps and inconsistent configs           | Fully automated using Terraform + CI/CD                          | DevOps Workflow         |
| 15    | Terraform destroy failures                | Resources not deleted properly                                              | AWS dependencies (ELB, ENI still attached)      | Cleaned Kubernetes resources before destroy                      | AWS / Terraform         |

---

## **Key Learnings**

From these challenges, several important lessons were learned:

---

### **1. Importance of Modular Design**

* Terraform modules must communicate via **inputs and outputs**, not direct references
* Proper modularization improves scalability and maintainability

---

### **2. Observability Must Be Built-In**

* Applications must expose:

  * `/metrics`
  * `/health`
* Without instrumentation, monitoring systems cannot function

---

### **3. Kubernetes Requires Strict Consistency**

* Labels, namespaces, and selectors must match exactly
* Small mismatches can break the entire system

---

### **4. Automation is Critical**

* Manual steps lead to:

  * Errors
  * Inconsistencies
* Automation using **Terraform and CI/CD** ensures repeatability

---

### **5. Debugging Requires Systematic Approach**

* Issues often arise across multiple layers:

  * Infrastructure
  * Kubernetes
  * CI/CD
* Logs and step-by-step validation are essential

---

### **6. Managed Services Have Hidden Behaviors**

* Amazon EKS hides some components (e.g., Controller Manager)
* Monitoring must account for such differences

---

### **7. Security Best Practices Matter**

* Avoid hardcoded credentials
* Use:

  * IAM roles
  * OIDC authentication
  * Secrets management

---

### **In Simple Words**

> Building a cloud-native system is not just about deployment — it requires careful coordination between infrastructure, applications, monitoring, and automation. Each challenge helped strengthen the system design and reliability.

---

## 18. Future Scope

### **Overview**

While the current system demonstrates a complete cloud-native observability platform, there are several opportunities to enhance its capabilities and move closer to a **production-grade system**.

The following areas outline potential improvements and extensions.

---

## **1. Advanced Security Enhancements**

* Implement **fine-grained IAM roles** with least privilege access
* Use **Kubernetes Secrets** or external secret managers (e.g., AWS Secrets Manager)
* Enable **network policies** to restrict pod-to-pod communication

👉 Improves overall system security and compliance

---

## **2. Multi-Region & High Availability**

* Deploy the system across multiple AWS regions
* Implement:

  * Load balancing across regions
  * Disaster recovery strategies

👉 Ensures high availability and fault tolerance

---

## **3. Autoscaling Implementation**

* Add **Horizontal Pod Autoscaler (HPA)** for applications
* Configure scaling based on:

  * CPU usage
  * Request rate

👉 Enables dynamic scaling based on workload

---

## **4. Centralized Logging System**

* Integrate logging tools such as:

  * ELK Stack (Elasticsearch, Logstash, Kibana)
  * Loki (Grafana logging system)

👉 Complements metrics with detailed log analysis

---

## **5. Advanced Alerting Strategy**

* Improve alert rules with:

  * Threshold tuning
  * Alert grouping and deduplication
  * Severity-based routing

* Integrate with:

  * Slack
  * PagerDuty

👉 Reduces alert noise and improves incident response

---

## **6. Chaos Engineering & Resilience Testing**

* Introduce tools like:

  * Chaos Mesh
  * LitmusChaos

* Simulate:

  * Node failures
  * Network issues

👉 Tests system reliability under real-world failures

---

## **7. Blue-Green / Canary Deployments**

* Enhance CI/CD pipeline to support:

  * Blue-Green deployments
  * Canary releases

👉 Enables safer and controlled application updates

---

## **8. Service Mesh Integration**

* Integrate tools like:

  * Istio
  * Linkerd

* Benefits:

  * Traffic management
  * Security (mTLS)
  * Observability at service level

---

## **9. Improved Frontend Experience**

* Replace static website with:

  * React or Next.js-based frontend

👉 Provides better user interaction and UI experience

---

## **10. Cost Optimization**

* Optimize AWS usage by:

  * Using spot instances
  * Reducing NAT Gateway costs
  * Implementing autoscaling policies

👉 Makes the system more cost-efficient

---

## **11. Full Production Readiness**

* Add:

  * Backup strategies
  * Logging + tracing integration
  * SLA/SLO-based monitoring

👉 Transforms the system into an enterprise-ready solution

---

### **Future Scope Summary**

> The project provides a strong foundation that can be extended into a fully scalable, secure, and production-ready cloud-native platform.

---

### **In Simple Words**

> With additional improvements in security, scaling, logging, and deployment strategies, this system can evolve into a real-world production-grade solution.

---

## 19. Conclusion

### **Overview**

This project successfully demonstrates the design and implementation of a **Cloud-Native Observability Platform on Amazon Elastic Kubernetes Service (Amazon EKS)** using modern DevOps practices and tools.

It brings together multiple technologies to create a system that is **automated, scalable, and observable**.

---

## **Key Achievements**

The project achieved the following:

* ✅ **Automated Infrastructure Provisioning**
  Using Terraform (Infrastructure as Code), the entire cloud environment was created in a consistent and repeatable manner

* ✅ **Containerized Application Deployment**
  Applications were packaged using Docker and deployed on Kubernetes (EKS)

* ✅ **CI/CD Automation**
  GitHub Actions enabled seamless build and deployment workflows without manual intervention

* ✅ **Comprehensive Observability**
  Integrated:

  * Prometheus (metrics collection)
  * Grafana (visualization)
  * Alertmanager (alerting)

* ✅ **Real-Time Monitoring & Alerting**
  The system can detect issues such as:

  * High error rates
  * Increased latency
  * Service downtime

---

## **Overall Impact**

This project highlights how modern cloud-native systems can:

* Be **fully automated** from infrastructure to deployment
* Provide **deep visibility** into system behavior
* Enable **proactive issue detection and resolution**

It reflects real-world practices used in:

* DevOps engineering
* Site Reliability Engineering (SRE)
* Cloud platform management

---

## **Learning Outcome**

Through this project, the following key concepts were understood:

* Integration of multiple tools into a single ecosystem
* Importance of observability in distributed systems
* Role of automation in reducing operational complexity
* Challenges of managing cloud-native environments

---

## **Final Thought**

> This project demonstrates that building modern applications is not just about deployment — it is about creating systems that are observable, reliable, and capable of self-monitoring in real time.

---

### **In Simple Words**

> The project shows how to build a smart system that can run applications, monitor them continuously, and alert you automatically when something goes wrong.

---

## 21. Contributors

### **Overview**

This project was developed as part of an academic major project under the **Faculty of Engineering and Technology**.

It is a collaborative effort by a team of students, guided by faculty supervision.

---

## **Project Team**

| **Name**              | **Roll Number** | **Role**                                              |
| --------------------- | --------------- | ----------------------------------------------------- |
| **Abhay Kumar Saini** | 0201220001      | DevOps, Infrastructure & Observability Implementation |
| **Abhijeet Kumar**    | 0201220002      | Application Development & Integration                 |
| **Vaibhav Sarkar**    | 0201220150      | Kubernetes Deployment & Testing                       |

---

## **Academic Details**

* **Program:** Bachelor of Technology (B.Tech)
* **Branch:** Computer Science and Engineering (CSE)
* **Semester:** VIII Semester
* **Academic Session:** 2025–2026

---

## **Project Supervision**

* **Guide:** Prof. (Dr.) Om Prakash Sharma
* **Coordinator:** Prof. (Dr.) Om Prakash Sharma

---

### **Institution**

**Jagannath University, Jaipur (Rajasthan)**
**Faculty of Engineering and Technology**

---

### **Contribution Summary**

* The project was collaboratively developed with contributions across:

  * Infrastructure design (Terraform)
  * Kubernetes deployment (Helm & EKS)
  * CI/CD pipeline (GitHub Actions)
  * Observability implementation (Prometheus, Grafana, Alertmanager)

---

### **In Simple Words**

> This project was built by a team of students with guidance from faculty, combining efforts in development, deployment, and monitoring to create a complete cloud-native system.

---

## 📜 License

This project is licensed under the **MIT License**, which allows flexible use while ensuring proper credit to the original authors.


### 🔹 Permissions

You are free to:

* Use this project for **personal, academic, or commercial purposes**
* Modify and improve the code
* Share or distribute the project

---

### 🔹 Conditions

* The original license and copyright notice must be included
* Proper credit must be given to the authors

---

### 📄 MIT License

```
MIT License

Copyright (c) 2026 Abhay Kumar Saini

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

### 📌 Note

* This license makes the project **open-source and reusable**
* Anyone can build upon this work while giving proper credit

---
