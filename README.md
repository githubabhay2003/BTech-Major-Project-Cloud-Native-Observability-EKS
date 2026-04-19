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

## 1. Quick Overview

This project presents the design and implementation of a **cloud-native observability platform** deployed on **Amazon Elastic Kubernetes Service (Amazon EKS)**.

The system demonstrates how modern applications can be:

* **Deployed in containers**
* **Managed using Kubernetes**
* **Monitored using observability tools**
* **Automated using CI/CD pipelines**

---

### **What the Project Does**

The platform includes:

* A **backend application** built using *FastAPI* (a modern Python web framework)
* A **static frontend website** served using *NGINX*
* A complete **monitoring and alerting system** using:

  * **Prometheus** (metrics collection)
  * **Grafana** (visual dashboards)
  * **Alertmanager** (notifications)

All components are deployed on a **Kubernetes cluster (EKS)** and managed using **Infrastructure as Code (Terraform)** and **Helm charts**.

---

### **Key Capabilities**

* 📦 Containerized application deployment
* ☁️ Cloud infrastructure provisioning using Terraform
* 🔄 Automated deployment using GitHub Actions (CI/CD)
* 📊 Real-time monitoring and visualization
* 🚨 Intelligent alerting for system health and failures
* 🌐 Ingress-based routing for accessing services

---

### **Real-World Relevance**

In real-world production systems, simply deploying applications is not enough. Teams need visibility into:

* System performance
* Error rates
* Resource usage
* Service availability

This project simulates a **production-like environment**, where engineers can:

* Detect failures early
* Monitor system behavior
* Respond to incidents effectively

---

### **In One Line**

> This project demonstrates how to build, deploy, monitor, and manage a scalable cloud-native application using modern DevOps and observability practices.

---

## 2. Problem Statement & Motivation

### **Problem Statement**

In modern cloud environments, applications are increasingly deployed using **microservices** and **container-based architectures**. While this improves scalability and flexibility, it also introduces new challenges:

* Difficulty in tracking application performance
* Limited visibility into system behavior
* Delayed detection of failures or downtime
* Lack of centralized monitoring and alerting
* Complex deployment and infrastructure management

Traditional monitoring approaches are often insufficient for such dynamic systems, especially when applications are distributed across multiple containers and nodes.

---

### **Why This is a Problem**

Without proper observability:

* A small issue (like a slow API) can go unnoticed until it affects users
* System failures may not be detected in real time
* Debugging becomes time-consuming and inefficient
* Teams lack data-driven insights to improve performance

For example, if an API starts returning errors intermittently, there must be a system that:

* Detects the error rate increase
* Alerts the team immediately
* Provides metrics to diagnose the root cause

---

### **Motivation Behind the Project**

This project is motivated by the need to build a **production-like observability system** that addresses these challenges.

The key motivations include:

* 🔍 **Visibility**
  Provide deep insights into application performance and health

* ⚡ **Proactive Monitoring**
  Detect issues before they impact end users

* 🤖 **Automation**
  Reduce manual effort using CI/CD and Infrastructure as Code

* 📈 **Scalability**
  Design a system that can grow with increasing workloads

* 🧪 **Practical Learning**
  Gain hands-on experience with real-world DevOps tools and practices

---

### **Goal in Simple Terms**

> Build a system where you don’t just run applications — you can *see*, *measure*, and *respond* to everything happening inside them.

---

## 3. Objectives

### **Primary Objective**

The primary objective of this project is to design and implement a **cloud-native observability platform** on **Amazon Elastic Kubernetes Service (Amazon EKS)** that enables efficient deployment, monitoring, and management of applications.

---

### **Specific Objectives**

To achieve the primary goal, the project focuses on the following key objectives:

---

### **1. Build a Cloud-Native Application Environment**

* Develop and deploy applications using **containerization (Docker)**
* Use **Kubernetes** for orchestration and management
* Ensure the system follows modern cloud-native principles

---

### **2. Implement Infrastructure as Code (IaC)**

* Use **Terraform** to provision cloud resources such as:

  * Virtual Private Cloud (VPC)
  * Amazon EKS cluster
  * Networking components
* Enable repeatable and automated infrastructure setup

---

### **3. Automate Deployment using CI/CD**

* Set up a **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using **GitHub Actions**
* Automate:

  * Building Docker images
  * Pushing images to Amazon Elastic Container Registry (ECR)
  * Deploying applications to Kubernetes

---

### **4. Enable Observability**

* Integrate monitoring tools to collect and visualize system data:

  * **Prometheus** for metrics collection
  * **Grafana** for dashboard visualization
* Instrument the backend application to expose performance metrics

---

### **5. Implement Alerting Mechanisms**

* Configure **Alertmanager** to send notifications when:

  * Error rates increase
  * Latency exceeds thresholds
  * Services become unavailable

---

### **6. Provide External Access via Ingress**

* Use **NGINX Ingress Controller** to:

  * Route external traffic to services
  * Enable centralized access to applications and monitoring tools

---

### **7. Demonstrate a Production-Like Setup**

* Simulate real-world scenarios including:

  * Multi-service deployment
  * Health checks and probes
  * Monitoring and alerting workflows

---

### **Objective Summary**

> The project aims to create a complete ecosystem where applications are not only deployed, but also continuously monitored, automatically updated, and intelligently managed.

---

## 4. Proposed Solution (High-Level)

### **Overview of the Proposed Solution**

To address the challenges of monitoring, managing, and scaling modern applications, this project proposes a **cloud-native observability platform** built on **Amazon Elastic Kubernetes Service (Amazon EKS)**.

The solution combines:

* **Containerized applications**
* **Automated infrastructure provisioning**
* **Continuous deployment pipelines**
* **Integrated monitoring and alerting**

All components work together to create a **fully automated and observable system**.

---

### **Core Idea**

Instead of treating deployment and monitoring as separate tasks, this project integrates them into a **single unified workflow** where:

* Applications are automatically deployed
* Metrics are continuously collected
* System health is constantly monitored
* Alerts are triggered when issues occur

---

### **Key Components of the Solution**

---

### **1. Application Layer**

* A **FastAPI-based backend service** provides API endpoints
* A **static website** acts as a frontend interface
* Both are containerized using Docker and deployed on Kubernetes

---

### **2. Infrastructure Layer**

* **Terraform** is used to provision:

  * Networking (VPC, subnets, gateways)
  * Amazon EKS cluster
  * Supporting AWS resources

This ensures:

* Consistency
* Repeatability
* Easy scalability

---

### **3. Deployment Automation (CI/CD)**

* **GitHub Actions** automates the entire deployment process:

  * Builds Docker images
  * Pushes images to Amazon ECR (Elastic Container Registry)
  * Deploys applications to EKS using Helm

This eliminates manual deployment steps.

---

### **4. Kubernetes Management (Helm)**

* Applications are deployed using **Helm charts**, which:

  * Simplify configuration
  * Enable versioned deployments
  * Allow easy updates and rollbacks

---

### **5. Observability Layer**

The platform integrates a full observability stack:

* **Prometheus**
  Collects application and system metrics

* **Grafana**
  Visualizes metrics through dashboards

* **Alertmanager**
  Sends alerts when predefined conditions are met

---

### **6. Traffic Routing**

* **NGINX Ingress Controller** is used to:

  * Route external requests to services
  * Provide a single entry point to the system
  * Enable access to:

    * Application endpoints
    * Monitoring dashboards

---

### **How Everything Works Together (Simple Flow)**

1. Developer pushes code to GitHub
2. CI/CD pipeline builds and deploys the application
3. Application runs inside Kubernetes (EKS)
4. Prometheus collects metrics from the application
5. Grafana displays these metrics in dashboards
6. Alertmanager sends notifications if issues are detected

---

### **In Simple Words**

> The solution creates a system where applications are automatically deployed, continuously monitored, and instantly reported on when something goes wrong.

---

## 5. Architecture Overview

### **Architecture Diagram**

<p align="center">
  <img src="https://raw.githubusercontent.com/githubabhay2003/BTech-Major-Project-Cloud-Native-Observability-EKS/main/docs/images/architecture-image.png" width="100%"><br>
  <b>Figure:</b> <i>End-to-End Architecture of the Cloud-Native Observability Platform on Amazon EKS</i>
</p>

---

### **High-Level Architecture Description**

The system is designed as a **layered cloud-native architecture**, where each layer has a specific responsibility. This ensures modularity, scalability, and ease of management.

The architecture can be understood in **four main layers**:

---

## **1. External Layer (User Interaction)**

* Users access the system through a **web browser**
* Requests are sent to the application via the internet
* Developers push code changes to **GitHub**, triggering the deployment pipeline

👉 This layer represents both **end-users** and **developers**

---

## **2. CI/CD Layer (Automation Layer)**

This layer handles **Continuous Integration and Continuous Deployment (CI/CD)**.

### Key Components:

* **GitHub Actions**
* **OIDC (OpenID Connect) Authentication**
* **Docker**
* **Amazon ECR (Elastic Container Registry)**
* **Helm**

### Workflow:

1. Developer pushes code to GitHub
2. GitHub Actions pipeline is triggered
3. Docker images are built for:

   * FastAPI backend
   * Website
4. Images are pushed to Amazon ECR
5. Helm deploys updated applications to EKS

👉 This ensures **fully automated deployments without manual intervention**

---

## **3. AWS Infrastructure Layer**

This is the **core cloud environment** where everything runs.

### **Networking (Amazon VPC)**

* **Public Subnets**

  * Internet Gateway (external access)
  * NAT Gateway (outbound internet for private resources)
  * Bastion Host (secure admin access)

* **Private Subnets**

  * Amazon EKS Cluster
  * Worker Nodes (Node Group)

👉 Ensures **secure and isolated deployment of workloads**

---

### **EKS Cluster (Kubernetes Layer)**

Inside the cluster:

#### **Ingress Controller**

* **NGINX Ingress Controller**
* Acts as a **single entry point**
* Routes traffic based on paths:

  * `/` → Website
  * `/api` → FastAPI

---

### **Application Workloads**

#### **1. Static Website**

* Deployed as a Kubernetes Deployment
* Exposed via a Service on port 80

#### **2. FastAPI Backend**

* Deployed as a Kubernetes Deployment
* Exposes:

  * `/api` → application endpoints
  * `/health` → liveness/readiness checks
  * `/metrics` → Prometheus metrics

---

### **IAM Roles & State Management**

* IAM roles are used for:

  * EKS Cluster
  * Node Group
  * GitHub Actions (OIDC-based access)
  * Bastion Host

* Terraform state:

  * Stored in **Amazon S3**
  * Locked using **DynamoDB**

👉 Ensures **secure access control and consistent infrastructure state**

---

## **4. Observability & Monitoring Layer**

This layer provides **complete visibility into system behavior**.

---

### **Monitoring Components**

#### **Prometheus**

* Collects metrics from:

  * FastAPI (`/metrics`)
  * Kubernetes resources
* Stores time-series data

---

#### **Grafana**

* Visualizes metrics using dashboards
* Displays:

  * Request rate
  * Error rate
  * Latency (P95, P99)
  * CPU and memory usage

---

#### **Alertmanager**

* Receives alerts from Prometheus
* Sends notifications via **email**

---

#### **Blackbox Exporter**

* Monitors external availability of the website
* Simulates real user access

---

### **Custom Monitoring Resources**

* **ServiceMonitor** → connects Prometheus to FastAPI
* **PrometheusRule** → defines alert conditions
* **Probe** → monitors website uptime

---

## **End-to-End Flow (Simplified)**

1. User sends request → Ingress Controller
2. Request routed to:

   * Website or FastAPI
3. FastAPI exposes metrics
4. Prometheus collects metrics
5. Grafana visualizes data
6. Alerts triggered via Alertmanager if thresholds exceed

---

### **Architecture Summary**

> The architecture integrates infrastructure, deployment, application, and observability into a unified system where everything is automated, monitored, and easily accessible.

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

## 7. Methodology & Workflow

### **Overview**

The methodology of this project follows a **DevOps-driven, cloud-native approach**, where the entire lifecycle of the application is:

* Designed
* Built
* Deployed
* Monitored
* Continuously improved

This ensures automation, consistency, and real-time visibility.

---

## **Step-by-Step Workflow**

The complete workflow can be divided into the following stages:

---

### **1. Infrastructure Provisioning**

* Infrastructure is defined using **Terraform (Infrastructure as Code - IaC)**
* Key resources created:

  * Virtual Private Cloud (VPC)
  * Subnets (public and private)
  * Amazon EKS cluster
  * IAM roles and permissions

👉 This step ensures that the environment is **consistent and reproducible**

---

### **2. Application Development**

* Backend developed using **FastAPI**
* Frontend created as a **static website (HTML + NGINX)**
* Applications are designed to:

  * Be lightweight
  * Expose health and metrics endpoints

---

### **3. Containerization**

* Applications are packaged into **Docker containers**
* Each service has its own Docker image:

  * FastAPI image
  * Website image

👉 This ensures portability across environments

---

### **4. Version Control & Code Management**

* Source code is managed using **GitHub**
* Developers push changes to the repository

👉 Every code change becomes a trigger for automation

---

### **5. CI/CD Pipeline Execution**

* **GitHub Actions** automatically:

  1. Builds Docker images
  2. Tags images using commit SHA
  3. Pushes images to Amazon ECR
  4. Deploys applications using Helm

👉 This eliminates manual deployment and reduces errors

---

### **6. Kubernetes Deployment**

* Applications are deployed to **Amazon EKS** using **Helm charts**
* Kubernetes manages:

  * Pods (application instances)
  * Services (network access)
  * Ingress (external routing)

👉 Ensures scalability and self-healing capabilities

---

### **7. Traffic Routing**

* **NGINX Ingress Controller** routes incoming traffic:

  * `/` → Website
  * `/api` → FastAPI

👉 Provides a unified entry point for all services

---

### **8. Monitoring & Observability**

* **Prometheus** collects metrics from:

  * FastAPI (`/metrics`)
  * Kubernetes resources

* **Grafana** visualizes metrics through dashboards

👉 Enables real-time performance tracking

---

### **9. Alerting Mechanism**

* **Prometheus** evaluates alert rules
* Alerts are sent to **Alertmanager**
* Alertmanager sends notifications via **email**

👉 Ensures quick response to system issues

---

### **10. External Health Monitoring**

* **Blackbox Exporter** periodically checks:

  * Website availability
* Alerts are triggered if the service is unreachable

---

## **Workflow Summary (Simplified Flow)**

1. Developer pushes code → GitHub
2. CI/CD pipeline builds & deploys application
3. Application runs on EKS
4. Prometheus collects metrics
5. Grafana displays system performance
6. Alerts triggered when issues occur

---

### **Key Methodological Approach**

* **Automation First** → Reduce manual work
* **Observability by Design** → Monitoring built into the system
* **Modular Architecture** → Independent components
* **Continuous Feedback Loop** → Monitor → Detect → Improve

---

### **In Simple Words**

> The project follows a workflow where everything is automated, continuously monitored, and designed to quickly detect and respond to issues.

---

## 8. Infrastructure Design (Terraform)

### **Overview**

The infrastructure for this project is designed using **Terraform**, an **Infrastructure as Code (IaC)** tool that allows cloud resources to be defined, provisioned, and managed through code.

This approach ensures:

* Consistency across environments
* Automated provisioning
* Easy scalability and maintenance

The infrastructure is organized into two main layers:

1. **Core Infrastructure (`infra`)**
2. **Application & Platform Layer (`apps`)**

---

## **1. Core Infrastructure Layer (`terraform/infra`)**

This layer is responsible for creating the **foundation of the system on AWS**.

---

### **a. Networking (VPC Setup)**

A custom **Virtual Private Cloud (VPC)** is created with:

* **Public Subnets**

  * Used for:

    * Internet Gateway
    * NAT Gateway
    * Bastion Host

* **Private Subnets**

  * Used for:

    * EKS cluster
    * Worker nodes

* **Internet Gateway**

  * Allows external traffic into the VPC

* **NAT Gateway**

  * Allows private resources to access the internet securely

👉 This ensures **secure isolation of internal services**

---

### **b. Amazon EKS Cluster**

* A managed Kubernetes cluster is created using **Amazon EKS**
* Includes:

  * Control plane (managed by AWS)
  * Node group (EC2 instances for workloads)

**Node Group Configuration:**

* Auto-scaling enabled (min, max, desired capacity)
* Runs application workloads

---

### **c. IAM (Identity and Access Management)**

IAM roles are created for secure access:

* **EKS Cluster Role**
* **Worker Node Role**
* **GitHub Actions Role (OIDC-based)**
* **Bastion Host Role**

👉 Enables **secure, role-based access control**

---

### **d. Bastion Host**

* An EC2 instance deployed in a public subnet
* Used for:

  * Secure access to the Kubernetes cluster
  * Running administrative commands (kubectl, helm)

---

### **e. Amazon ECR (Elastic Container Registry)**

* Stores Docker images for:

  * FastAPI application
  * Website

👉 Acts as a central image repository for deployments

---

### **f. Remote State Management**

Terraform state is managed using:

* **Amazon S3**

  * Stores state files

* **Amazon DynamoDB**

  * Provides state locking

👉 Prevents conflicts during concurrent deployments

---

## **2. Application & Platform Layer (`terraform/apps`)**

This layer configures and deploys **Kubernetes-based services** on the EKS cluster.

---

### **a. Kubernetes Access Configuration**

* Uses remote state from `infra` to:

  * Connect to EKS cluster
  * Configure authentication

* Updates **aws-auth ConfigMap** to:

  * Grant access to nodes
  * Allow GitHub Actions to deploy

---

### **b. NGINX Ingress Controller**

* Installed using **Helm**
* Configured as:

  * **LoadBalancer service**
* Acts as:

  * Entry point for all external traffic

---

### **c. Observability Module**

Deploys the monitoring stack:

* **Prometheus + Grafana + Alertmanager**
* **Blackbox Exporter**

Also configures:

* Dashboards
* Alert rules
* Metrics scraping

---

### **d. Observability Routing**

* Uses:

  * **ExternalName services**
  * **Ingress resources**

* Exposes:

  * Grafana → `/grafana`
  * Prometheus → `/prometheus`
  * Alertmanager → `/alertmanager`

👉 Enables centralized access to monitoring tools

---

## **Modular Design Approach**

The Terraform code is structured into reusable modules:

* `network` → VPC and subnets
* `iam` → Roles and permissions
* `eks` → Kubernetes cluster
* `bastion` → Admin access
* `ecr` → Container registry
* `observability` → Monitoring stack
* `ingress-nginx` → Traffic routing

👉 Improves maintainability and scalability

---

## **Infrastructure Workflow**

1. Terraform provisions AWS infrastructure
2. EKS cluster is created and configured
3. Kubernetes providers connect to the cluster
4. Helm deploys platform components
5. Applications are later deployed via CI/CD

---

### **Key Design Principles**

* **Infrastructure as Code** → Everything is version-controlled
* **Modularity** → Components are reusable and independent
* **Security** → Private subnets and IAM roles
* **Scalability** → EKS + node groups
* **Automation** → Minimal manual intervention

---

### **In Simple Words**

> Terraform builds the entire cloud environment from scratch, ensuring everything is automated, secure, and ready for application deployment.

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

## 12. Alerts & Monitoring Strategy

### **Overview**

The project implements a structured **monitoring and alerting strategy** to ensure that system issues are detected early and handled efficiently.

This strategy is built using:

* **Prometheus** → Evaluates conditions and generates alerts
* **Alertmanager** → Processes and sends notifications
* **Grafana** → Visualizes system health

---

## **1. Alerting Strategy Design**

The alerting system is designed around three key goals:

* 🔍 **Early Detection** → Identify issues before they impact users
* ⚠️ **Actionable Alerts** → Provide meaningful alerts, not noise
* 📩 **Timely Notifications** → Inform the team immediately

---

## **2. Types of Alerts Implemented**

### **A. Application-Level Alerts (FastAPI)**

These alerts monitor the health and performance of the backend service.

| **Alert Name**  | **Condition**           | **Purpose**             |
| --------------- | ----------------------- | ----------------------- |
| High Error Rate | Too many 5xx responses  | Detect backend failures |
| High Latency    | P95 latency > threshold | Detect slow responses   |
| Service Down    | No running replicas     | Detect complete outage  |

👉 Ensures the API is **available, fast, and reliable**

---

### **B. Website Availability Alerts**

* Uses **Blackbox Exporter** to simulate real user access
* Alert triggers when:

  * Website is not reachable via HTTP

👉 Ensures **end-user accessibility**

---

### **C. Infrastructure-Level Alerts (Kubernetes)**

These come from the **kube-prometheus-stack** and monitor cluster components.

However, some alerts behave differently in **Amazon EKS (Elastic Kubernetes Service)**.

---

## **3. Special Alerts in EKS (Important Understanding)**

Based on your provided document , some alerts appear even when the system is healthy.

---

### **1. KubeControllerManagerDown**

* **What it means:** Controller Manager is not detected
* **Reason:** In EKS, it is managed by AWS and not visible inside the cluster
* **Interpretation:**

  * ✅ Normal behavior
  * ❌ Not an actual failure

---

### **2. KubeSchedulerDown**

* **What it means:** Scheduler is not detected
* **Reason:** Also managed externally by AWS
* **Interpretation:**

  * ✅ Normal behavior
  * ❌ Not a real issue

---

### **3. Watchdog Alert**

* **What it means:** A test alert to verify alerting system health

* **Behavior:** Always active

* **Interpretation:**

  * ✅ Confirms alerting pipeline is working
  * ❗ Should NOT be disabled

---

### **Summary of These Alerts**

| **Alert**                 | **Meaning**                       | **Is it Normal?** | **Action**   |
| ------------------------- | --------------------------------- | ----------------- | ------------ |
| KubeControllerManagerDown | AWS-managed component not visible | Yes               | Ignore       |
| KubeSchedulerDown         | AWS-managed component not visible | Yes               | Ignore       |
| Watchdog                  | System health check               | Yes               | Keep enabled |

---

## **4. Alert Flow**

1. Prometheus continuously evaluates metrics
2. If a condition is met → alert is triggered
3. Alert is sent to **Alertmanager**
4. Alertmanager:

   * Groups alerts
   * Applies rules
   * Sends email notifications

---

## **5. Notification Configuration**

* Alerts are sent via **email (SMTP configuration)**
* Includes:

  * Alert name
  * Description
  * Severity level

👉 Ensures quick awareness of system issues

---

## **6. Alert Severity Levels**

* **Warning** → Performance issues (e.g., latency, error rate)
* **Critical** → Service down or unavailable

---

## **7. Monitoring Strategy Summary**

The monitoring system combines:

* 📊 **Metrics Monitoring** → Prometheus
* 📈 **Visualization** → Grafana
* 🚨 **Alerting** → Alertmanager
* 🌐 **External Checks** → Blackbox Exporter

---

### **Key Insight**

> Not all alerts indicate real problems — especially in managed environments like EKS. Understanding context is essential to avoid false alarms.

---

### **In Simple Words**

> The system continuously watches application performance and automatically alerts you when something goes wrong, while also filtering out expected behavior in managed cloud environments.

---
## 13. Results & Discussion

### **Overview**

This section evaluates the outcomes of the implemented system and discusses how effectively the project meets its objectives.

The results demonstrate that the platform successfully delivers a **fully functional, automated, and observable cloud-native environment**.

---

## **1. Deployment Results**

* Applications (FastAPI and Website) were successfully:

  * Containerized using Docker
  * Deployed on Amazon EKS using Helm

* The CI/CD pipeline:

  * Automatically builds and deploys applications
  * Ensures consistent and repeatable deployments

👉 Result: **Zero manual deployment effort after initial setup**

---

## **2. Infrastructure Validation**

* Terraform successfully provisioned:

  * VPC and networking components
  * EKS cluster and node groups
  * IAM roles and permissions

* Remote state management using:

  * Amazon S3 (storage)
  * DynamoDB (locking)

👉 Result: **Reliable and reproducible infrastructure setup**

---

## **3. Observability Outcomes**

### **Metrics Collection**

* Prometheus successfully collected:

  * API request metrics
  * Response status codes
  * Latency data
  * Resource utilization (CPU, memory)

---

### **Visualization**

* Grafana dashboards displayed:

  * Real-time system performance
  * Golden signals (traffic, errors, latency, saturation)

👉 Result: **Clear and actionable visibility into system behavior**

---

### **Alerting**

* Alertmanager successfully triggered alerts for:

  * High error rates
  * High latency
  * Service downtime
  * Website unavailability

* Email notifications were delivered correctly

👉 Result: **Effective real-time alerting system**

---

## **4. System Behavior Under Monitoring**

The system was able to:

* Detect abnormal conditions (e.g., increased latency)
* Identify service downtime quickly
* Provide metrics for debugging

Even in cases where certain alerts appeared (e.g., Kubernetes internal components), the system behavior was correctly interpreted as **expected in a managed EKS environment**.

---

## **5. Performance Insights**

Using Grafana dashboards, the following insights were observed:

* Stable request handling under normal conditions
* Clear spikes in metrics when load increases
* Accurate representation of resource usage

👉 Result: **Reliable performance monitoring**

---

## **6. Automation Effectiveness**

* CI/CD pipeline reduced deployment time significantly
* No manual configuration required for updates
* Version tracking via commit SHA ensured traceability

👉 Result: **Efficient and scalable deployment workflow**

---

## **7. Overall System Evaluation**

| **Aspect**     | **Outcome**                      |
| -------------- | -------------------------------- |
| Deployment     | Fully automated                  |
| Infrastructure | Consistent and reproducible      |
| Monitoring     | Real-time and comprehensive      |
| Alerting       | Accurate and responsive          |
| Scalability    | Supported via Kubernetes         |
| Reliability    | High, with self-healing features |

---

## **Discussion**

The project successfully demonstrates how modern DevOps practices can be integrated to build a **production-like system**.

### **Key Observations**

* Observability must be **built into the system**, not added later
* Automation significantly reduces operational complexity
* Managed services like EKS simplify infrastructure but require **context-aware monitoring**
* Combining multiple tools (Terraform, Helm, Prometheus, Grafana) creates a powerful ecosystem

---

### **Practical Impact**

This system can be used as a foundation for:

* Real-world production deployments
* Learning DevOps and cloud-native practices
* Extending into more advanced monitoring systems

---

### **In Simple Words**

> The project successfully shows that applications can be automatically deployed, continuously monitored, and intelligently managed in a cloud environment.

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

## 17. Limitations

### **Overview**

While the project successfully demonstrates a complete cloud-native observability platform, it has certain limitations due to scope, design choices, and the academic nature of the implementation.

Understanding these limitations helps identify areas for improvement and future enhancement.

---

## **Key Limitations**

---

### **1. Not Fully Production-Hardened**

* The system is designed for learning and demonstration
* Missing advanced production features such as:

  * Fine-grained security policies
  * High availability configurations across multiple regions

👉 Suitable for **educational and prototype use**, not full-scale production

---

### **2. Limited Security Implementation**

* Some configurations are simplified:

  * IAM roles may have broad permissions (for ease of setup)
  * Credentials (e.g., SMTP, Grafana) may not use secure secret storage

👉 Needs improvement with:

* Kubernetes Secrets
* Role-based access control (RBAC) refinement

---

### **3. Cost Considerations**

* Uses real AWS services such as:

  * EKS
  * NAT Gateway
  * Load Balancer

* These services are **not fully free-tier eligible**

👉 Requires careful usage and teardown to avoid costs

---

### **4. Single Region Deployment**

* Deployed only in one AWS region (e.g., `us-east-1`)
* No multi-region failover or disaster recovery

👉 Limits system resilience in case of regional failures

---

### **5. Basic Alerting Strategy**

* Alerts cover key scenarios but are:

  * Not deeply tuned
  * May include noise (e.g., expected alerts in EKS)

👉 Needs refinement for:

* Alert prioritization
* Noise reduction

---

### **6. Limited Logging Implementation**

* Focus is mainly on **metrics-based observability**
* Centralized logging (e.g., ELK stack or Loki) is not implemented

👉 Limits ability to debug detailed application issues

---

### **7. Manual Testing for Failure Scenarios**

* Failure scenarios (e.g., scaling pods to zero) are tested manually
* No automated chaos testing or resilience testing

👉 Could be improved using:

* Chaos engineering tools

---

### **8. Simplified Frontend Application**

* Uses a basic static website
* No dynamic frontend framework or user interaction

👉 Focus is on infrastructure and observability rather than UI complexity

---

### **9. Limited Autoscaling Configuration**

* Kubernetes supports autoscaling, but:

  * Horizontal Pod Autoscaler (HPA) is not fully implemented

👉 Limits automatic scaling based on real-time load

---

### **10. Tight Coupling in Some Areas**

* Some components (Terraform, Helm, CI/CD) are closely integrated
* Changes in one layer may require updates in others

👉 Could be improved with better decoupling and abstraction

---

## **Summary**

> While the project effectively demonstrates modern DevOps and observability practices, it is intentionally simplified in certain areas to maintain clarity and feasibility within an academic scope.

---

### **In Simple Words**

> The system works well and shows real-world concepts, but it is not fully optimized for production environments and can be improved in areas like security, scalability, and advanced monitoring.

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

## 20. References

### **Overview**

The following references were used to understand and implement various components of this project, including **cloud computing, Kubernetes, DevOps practices, and observability tools**.

All references are formatted according to the **IEEE citation style**.

---

### **References (IEEE Format)**

[1] B. Burns, B. Grant, D. Oppenheimer, E. Brewer, and J. Wilkes, “Borg, Omega, and Kubernetes,” *Communications of the ACM*, vol. 59, no. 5, pp. 50–57, May 2016.

[2] K. Hightower, B. Burns, and J. Beda, *Kubernetes: Up and Running*, 2nd ed., Sebastopol, CA: O’Reilly Media, 2019.

[3] B. Turnbull, *The Docker Book: Containerization is the New Virtualization*, Portland, OR: Atomic Penguin Publishing, 2014.

[4] HashiCorp, “Terraform Documentation,” Available: [https://developer.hashicorp.com/terraform/docs](https://developer.hashicorp.com/terraform/docs) (Accessed: Apr. 19, 2026).

[5] Amazon Web Services, “Amazon EKS Documentation,” Available: [https://docs.aws.amazon.com/eks/](https://docs.aws.amazon.com/eks/) (Accessed: Apr. 19, 2026).

[6] Amazon Web Services, “Amazon ECR Documentation,” Available: [https://docs.aws.amazon.com/ecr/](https://docs.aws.amazon.com/ecr/) (Accessed: Apr. 19, 2026).

[7] Prometheus Authors, “Prometheus Documentation,” Available: [https://prometheus.io/docs/](https://prometheus.io/docs/) (Accessed: Apr. 19, 2026).

[8] Grafana Labs, “Grafana Documentation,” Available: [https://grafana.com/docs/](https://grafana.com/docs/) (Accessed: Apr. 19, 2026).

[9] Prometheus Authors, “Alertmanager Documentation,” Available: [https://prometheus.io/docs/alerting/latest/alertmanager/](https://prometheus.io/docs/alerting/latest/alertmanager/) (Accessed: Apr. 19, 2026).

[10] Helm Authors, “Helm Documentation,” Available: [https://helm.sh/docs/](https://helm.sh/docs/) (Accessed: Apr. 19, 2026).

[11] GitHub, “GitHub Actions Documentation,” Available: [https://docs.github.com/en/actions](https://docs.github.com/en/actions) (Accessed: Apr. 19, 2026).

[12] FastAPI, “FastAPI Documentation,” Available: [https://fastapi.tiangolo.com/](https://fastapi.tiangolo.com/) (Accessed: Apr. 19, 2026).

[13] NGINX, “NGINX Documentation,” Available: [https://nginx.org/en/docs/](https://nginx.org/en/docs/) (Accessed: Apr. 19, 2026).

[14] CNCF, “Cloud Native Computing Foundation Landscape,” Available: [https://landscape.cncf.io/](https://landscape.cncf.io/) (Accessed: Apr. 19, 2026).

[15] J. Humble and D. Farley, *Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation*, Boston, MA: Addison-Wesley, 2010.

[16] N. Kratzke and P.-C. Quint, “Understanding cloud-native applications after 10 years of cloud computing,” *Journal of Systems and Software*, vol. 126, pp. 1–16, Apr. 2017.

[17] L. Bass, I. Weber, and L. Zhu, *DevOps: A Software Architect’s Perspective*, Boston, MA: Addison-Wesley, 2015.

[18] Google Cloud, “Site Reliability Engineering Book,” Available: [https://sre.google/books/](https://sre.google/books/) (Accessed: Apr. 19, 2026).

[19] D. Merkel, “Docker: Lightweight Linux containers for consistent development and deployment,” *Linux Journal*, vol. 2014, no. 239, Mar. 2014.

[20] M. Fowler, “Infrastructure as Code,” Available: [https://martinfowler.com/bliki/InfrastructureAsCode.html](https://martinfowler.com/bliki/InfrastructureAsCode.html) (Accessed: Apr. 19, 2026).

[21] Kubernetes Authors, “Kubernetes Documentation,” Available: [https://kubernetes.io/docs/home/](https://kubernetes.io/docs/home/) (Accessed: Apr. 19, 2026).

[22] Prometheus Community, “kube-prometheus-stack Helm Chart,” Available: [https://github.com/prometheus-community/helm-charts](https://github.com/prometheus-community/helm-charts) (Accessed: Apr. 19, 2026).

[23] AWS, “IAM Best Practices,” Available: [https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) (Accessed: Apr. 19, 2026).

[24] OIDC, “OpenID Connect Core 1.0,” Available: [https://openid.net/specs/openid-connect-core-1_0.html](https://openid.net/specs/openid-connect-core-1_0.html) (Accessed: Apr. 19, 2026).

[25] CNCF, “Prometheus Monitoring Overview,” Available: [https://www.cncf.io/projects/prometheus/](https://www.cncf.io/projects/prometheus/) (Accessed: Apr. 19, 2026).

[26] Grafana Labs, “Monitoring Best Practices,” Available: [https://grafana.com/docs/grafana/latest/best-practices/](https://grafana.com/docs/grafana/latest/best-practices/) (Accessed: Apr. 19, 2026).

[27] AWS, “Elastic Load Balancing Documentation,” Available: [https://docs.aws.amazon.com/elasticloadbalancing/](https://docs.aws.amazon.com/elasticloadbalancing/) (Accessed: Apr. 19, 2026).

[28] Kubernetes, “Ingress Concepts,” Available: [https://kubernetes.io/docs/concepts/services-networking/ingress/](https://kubernetes.io/docs/concepts/services-networking/ingress/) (Accessed: Apr. 19, 2026).

[29] Prometheus, “Blackbox Exporter,” Available: [https://github.com/prometheus/blackbox_exporter](https://github.com/prometheus/blackbox_exporter) (Accessed: Apr. 19, 2026).

[30] Google, “Monitoring Distributed Systems,” Available: [https://sre.google/sre-book/monitoring-distributed-systems/](https://sre.google/sre-book/monitoring-distributed-systems/) (Accessed: Apr. 19, 2026).

---

### **In Simple Words**

> These references include official documentation, research papers, and books that support the technologies and concepts used in this project.

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



