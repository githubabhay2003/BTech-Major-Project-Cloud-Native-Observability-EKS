# Cloud-Native Observability Platform on Amazon EKS
---

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
# 1. Project Description / Overview
This project focuses on building an automated and reliable cloud-based system for deploying and monitoring applications using modern DevOps practices.

---

### 🔹 What this project does

* Deploys an application on **Amazon Web Services (AWS)** cloud platform
* Runs applications inside **Amazon Elastic Kubernetes Service (EKS)** for scalability and management
* Automates build and deployment using a **Continuous Integration and Continuous Deployment (CI/CD)** pipeline
* Continuously monitors system performance and health

---

### 🔹 System Components

* **Backend Application:** Developed using FastAPI (Python-based web framework)
* **Frontend:** Static website served using Nginx (web server)
* **Containerization:** Applications are packaged using Docker (container platform)
* **Orchestration:** Managed using Kubernetes via Amazon Elastic Kubernetes Service (EKS)

---

### 🔹 Automation & Deployment

* Infrastructure is created using **Terraform (Infrastructure as Code - IaC)**
* Eliminates manual configuration and ensures reproducibility
* CI/CD pipeline implemented using **GitHub Actions**:

  * Automatically builds application
  * Pushes container images to **Amazon Elastic Container Registry (ECR)**
  * Deploys applications to Kubernetes using Helm (Kubernetes package manager)
* Secure authentication using **OpenID Connect (OIDC)** (no hardcoded credentials required)

---

### 🔹 Monitoring & Observability

* **Prometheus (monitoring tool)** collects application and system metrics
* **Grafana (visualization tool)** provides dashboards for data analysis
* **Alertmanager (alerting system)** sends notifications when issues occur
* Enables monitoring of:

  * Performance and response time
  * Errors and failures
  * Resource utilization

---

### 🔹 Key Benefits

* Fully automated and reproducible infrastructure
* Scalable system suitable for real-world applications
* Reduces manual errors and deployment time
* Provides complete visibility into system performance

---

### 🔹 In Simple Words

This project demonstrates how to:

* Build an application
* Deploy it automatically on the cloud
* Monitor its performance continuously
* And rebuild the entire system whenever required

---
# 2. Problem Statement

Modern cloud-based applications are becoming increasingly complex and require continuous monitoring and reliable deployment mechanisms. However, many existing systems face several critical challenges.

---

### 🔹 Key Problems Identified

* **Lack of Proper Monitoring Systems**
  Many applications do not have effective tools to continuously track performance, making it difficult to detect issues such as delays, failures, or resource overload.

* **Manual Infrastructure Setup**
  Traditional systems require manual configuration of cloud resources, which:

  * Increases the chances of human error
  * Consumes more time
  * Leads to inconsistent environments

* **Absence of Automation**
  Without **Continuous Integration and Continuous Deployment (CI/CD)** pipelines:

  * Application updates are slow
  * Deployment processes are not standardized
  * Frequent manual intervention is required

* **No Rebuild-Safe Architecture**
  Many systems cannot be easily recreated once they fail or are deleted, leading to downtime and recovery challenges.

---

### 🔹 Real-World Scenario

Consider a company running a web application on the cloud:

* If the application slows down or crashes, there is **no monitoring system** to detect the issue early
* Infrastructure is set up **manually**, so recreating it takes significant time
* Deployment is done manually, increasing the risk of errors
* If the system fails, it **cannot be rebuilt quickly**, causing service downtime

---

### 🔹 Overall Problem

There is a need for a unified system that can:

* Automate infrastructure creation
* Deploy applications efficiently
* Monitor system performance in real time
* And allow the entire system to be rebuilt safely without manual effort

---

### 🔹 In Simple Words

Existing systems are:

* Hard to manage
* Not automated
* Difficult to monitor
* And not reliable to rebuild

---
# 3. Objectives

The main objectives of this project are:

---

### 🔹 Core Objectives

* **Automate Infrastructure Provisioning**
  To create cloud resources automatically using **Terraform (Infrastructure as Code - IaC)**, reducing manual effort and ensuring consistency.

* **Deploy Application on Kubernetes**
  To deploy a containerized application on **Amazon Elastic Kubernetes Service (EKS)** for scalable and efficient application management.

* **Implement Monitoring System**
  To track system and application performance using **Prometheus (monitoring tool)** and visualize data using **Grafana (visualization tool)**.

* **Enable Alerting Mechanism**
  To configure **Alertmanager (alerting system)** for generating notifications when system performance crosses defined thresholds.

* **Ensure Rebuild Reliability**
  To design the system in such a way that the entire infrastructure and application can be safely deleted and recreated without manual intervention.

---

### 🔹 Supporting Objectives

* **Implement Continuous Integration and Continuous Deployment (CI/CD)**
  To automate build and deployment processes using **GitHub Actions**, improving efficiency and reducing errors.

* **Use Secure Authentication Mechanism**
  To implement **OpenID Connect (OIDC)** for secure access without storing long-term credentials.

---

### 🔹 In Simple Words

The project aims to:

* Automate everything
* Deploy applications easily
* Monitor performance
* Get alerts on issues
* And rebuild the system anytime

---
# 4. Key Features and Skills Demonstrated

This project combines modern cloud technologies and DevOps practices to build a scalable, automated, and production-ready system while demonstrating practical engineering skills.

---

### ☁️ Cloud Infrastructure (Amazon Web Services - AWS)

* Provisioned cloud resources such as:

  * Virtual Private Cloud (VPC)
  * Subnets and networking components
  * Network Address Translation (NAT) Gateway
* Deployed and managed **Amazon Elastic Kubernetes Service (EKS)**
* Configured **AWS Identity and Access Management (IAM)** for secure access

👉 **Skill Gained:** Cloud architecture design and secure infrastructure management

---

### 🏗️ Infrastructure as Code (Terraform)

* Automated complete infrastructure using **Terraform (Infrastructure as Code - IaC)**
* Designed modular architecture (network, EKS, IAM, ECR, bastion)
* Ensured consistent and reproducible environment setup

👉 **Skill Gained:** Infrastructure automation and modular system design

---

### ⚙️ CI/CD Automation (GitHub Actions + OIDC)

* Implemented **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using GitHub Actions
* Automated:

  * Application build
  * Docker image creation and tagging
  * Deployment to Kubernetes
* Used **OpenID Connect (OIDC)** for secure authentication without storing credentials

👉 **Skill Gained:** Secure and automated deployment pipeline design

---

### 🐳 Containerization (Docker)

* Built Docker images for:

  * FastAPI backend
  * Nginx frontend
* Managed container lifecycle using **Amazon Elastic Container Registry (ECR)** and Kubernetes

👉 **Skill Gained:** Application containerization and image management

---

### ☸️ Kubernetes & Helm Deployment

* Deployed applications on **Amazon Elastic Kubernetes Service (EKS)**
* Used **Helm (Kubernetes package manager)** for simplified deployment
* Configured:

  * Deployments (replicas, health checks)
  * Services (ClusterIP)
  * Ingress (routing rules)

👉 **Skill Gained:** Kubernetes orchestration and scalable deployment

---

### 🌐 Traffic Management & Networking

* Implemented **NGINX Ingress Controller** with AWS Load Balancer
* Configured path-based routing:

  * `/` → Website
  * `/api` → Backend
  * Monitoring endpoints
* Ensured efficient and structured traffic flow

👉 **Skill Gained:** Networking and request routing in distributed systems

---

### 📊 Monitoring & Observability

* Integrated **Prometheus (monitoring tool)** for metrics collection
* Visualized data using **Grafana (dashboard tool)**
* Configured **Alertmanager (alerting system)** for notifications
* Monitored:

  * Performance
  * Errors
  * Resource usage

👉 **Skill Gained:** Real-time monitoring and system observability

---

### 🔐 Security Best Practices

* Implemented **OIDC-based authentication** (no static credentials)
* Controlled access using IAM roles and Kubernetes configuration
* Deployed workloads in secure private subnets

👉 **Skill Gained:** Secure system design and access management

---

### 🔁 Reliability and Rebuild Capability

* Designed system to be:

  * Fully automated
  * Easily deployable
  * Rebuild-safe
* Entire infrastructure and application can be recreated without manual steps

👉 **Skill Gained:** Designing reliable and fault-tolerant systems

---

### 🔹 In Simple Words

This project demonstrates how to:

* Build cloud infrastructure
* Deploy applications automatically
* Manage them using Kubernetes
* Monitor everything in real time
* And rebuild the system whenever required

---
# 5. System Architecture
<p align="center">
  <img src="https://github.com/user-attachments/assets/f2af2dc3-a293-4803-895b-82b327ffcd05" alt="EKS Observability Architecture" width="100%">
</p>

<p align="center">
  <em>Figure: End-to-end cloud-native architecture on AWS EKS with CI/CD, multi-service deployment, and observability stack</em>
</p>

---

## System Architecture Explanation
The system is designed using a **layered architecture**, where each layer has a specific responsibility. This makes the system easy to manage, scalable, and reliable.

---

### 🔹 Overall Understanding (Simple View)

Think of this system like a **modern shopping mall**:

* Entry gate → Handles all visitors (users)
* Shops → Provide services (application)
* Management system → Controls operations (Kubernetes)
* CCTV & monitoring → Tracks activity (monitoring tools)
* Construction plan → Defines structure (Terraform)
* Automatic updates → Keeps everything up-to-date (CI/CD)

---

## 🔹 1. Entry Layer (Traffic Handling)

* Uses **NGINX Ingress Controller (traffic manager)**
* Exposed using **Amazon Web Services (AWS) Load Balancer (LB)**
* Acts as a **single entry point** for all users

### 📌 How it works:

* When a user opens the system, all requests come to one place
* Based on the request path, traffic is routed to the correct service:

  * `/` → Website (frontend)
  * `/api` → Backend application
  * `/grafana`, `/prometheus`, `/alertmanager` → Monitoring tools

👉 **Real-World Example:**
Like a receptionist in an office who directs visitors to the correct department.

---

## 🔹 2. Application Layer (Actual Services)

This layer contains the actual applications used by the user.

* **Frontend:** Website served using Nginx
* **Backend:** API built using FastAPI

### 📌 Key functionalities:

* `/` → Basic response from application
* `/health` → Checks if system is running properly
* `/metrics` → Provides performance data for monitoring

👉 **Real-World Example:**
Like different departments in a company:

* Front desk → Website
* Operations team → Backend processing

---

## 🔹 3. Kubernetes Layer (Application Management)

* Managed using **Amazon Elastic Kubernetes Service (EKS)**
* Runs applications in containers

### 📌 Responsibilities:

* Maintains multiple copies (replicas) of applications
* Automatically restarts failed services
* Exposes services internally using ClusterIP
* Deployments managed using **Helm (Kubernetes package manager)**

👉 **Real-World Example:**
Like a manager ensuring:

* Enough staff are available
* Work continues even if someone is absent

---

## 🔹 4. Observability Layer (Monitoring System)

* **Prometheus (monitoring tool)** collects performance data
* **Grafana (visualization tool)** displays dashboards
* **Alertmanager (alerting system)** sends alerts

### 📌 What it monitors:

* Application performance
* Error rates
* Traffic and usage
* Resource consumption

👉 **Real-World Example:**
Like CCTV cameras and alarms in a building:

* Monitor activity
* Alert when something goes wrong

---

## 🔹 5. Infrastructure Layer (System Foundation)

* Built using **Terraform (Infrastructure as Code - IaC)**

### 📌 Creates:

* Virtual Private Cloud (VPC)
* Public and private subnets
* Network Address Translation (NAT) Gateway
* Kubernetes cluster (EKS)
* IAM (Identity and Access Management) roles
* Amazon Elastic Container Registry (ECR)
* Bastion host for secure access

👉 **Real-World Example:**
Like the blueprint and construction of a building before operations start.

---

## 🔹 6. CI/CD Layer (Automation System)

* Implemented using **GitHub Actions (CI/CD platform)**

### 📌 What it does:

* Builds Docker images automatically
* Pushes them to Amazon Elastic Container Registry (ECR)
* Deploys applications to Kubernetes using Helm
* Uses **OpenID Connect (OIDC)** for secure authentication

👉 **Real-World Example:**
Like an automatic machine that:

* Updates software
* Deploys changes
* Without manual intervention

---

## 🔹 End-to-End Flow (Quick Summary)

1. User sends request → goes to Load Balancer
2. Ingress routes request to correct service
3. Application processes the request
4. Kubernetes ensures system stability
5. Monitoring tools track performance
6. CI/CD keeps system updated automatically

---

### 🔹 In Simple Words

The system:

* Receives user requests
* Routes them correctly
* Runs applications reliably
* Monitors everything continuously
* And updates automatically

---
# 6. Tech Stack

| **Category**                  | **Technology**                                                                            | **Purpose / Explanation**                                                                            |
| ----------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **Cloud Platform**            | Amazon Web Services (AWS)                                                                 | Provides the cloud environment where the entire system (servers, networking, storage) is hosted.     |
| **Container Registry**        | Amazon Elastic Container Registry (ECR)                                                   | Stores Docker images securely so they can be used for deployment.                                    |
| **Containerization**          | Docker (Container Platform)                                                               | Packages applications into containers so they run consistently across different environments.        |
| **Orchestration**             | Kubernetes (Container Orchestration Platform) via Amazon Elastic Kubernetes Service (EKS) | Manages, scales, and maintains containerized applications automatically.                             |
| **Infrastructure Automation** | Terraform (Infrastructure as Code - IaC)                                                  | Automates the creation of cloud infrastructure such as networks, Kubernetes clusters, and resources. |
| **CI/CD Pipeline**            | GitHub Actions (Continuous Integration and Continuous Deployment - CI/CD)                 | Automates building, testing, and deploying the application whenever changes are made.                |
| **Authentication & Security** | AWS Identity and Access Management (IAM) + OpenID Connect (OIDC)                          | Provides secure access control and enables authentication without storing sensitive credentials.     |
| **Backend Application**       | FastAPI (Python Web Framework)                                                            | Handles API requests and provides application logic along with performance metrics.                  |
| **Frontend Application**      | Nginx (Web Server)                                                                        | Serves the static website content to users.                                                          |
| **Deployment Tool**           | Helm (Kubernetes Package Manager)                                                         | Simplifies application deployment and management on Kubernetes using reusable templates.             |
| **Traffic Routing**           | NGINX Ingress Controller (Traffic Manager)                                                | Routes incoming user requests to the correct service inside the Kubernetes cluster.                  |
| **Monitoring**                | Prometheus (Monitoring Tool)                                                              | Collects and stores system and application performance metrics.                                      |
| **Visualization**             | Grafana (Visualization Tool)                                                              | Displays metrics in the form of dashboards for easy understanding and analysis.                      |
| **Alerting**                  | Alertmanager (Alerting System)                                                            | Sends alerts or notifications when system issues or failures are detected.                           |
| **Metrics Exporter**          | Prometheus FastAPI Instrumentator (Metrics Exporter)                                      | Exposes application metrics from FastAPI so they can be monitored by Prometheus.                     |

---

### 🔹 In Simple Words

This tech stack helps to:

* Build applications
* Deploy them automatically
* Run them efficiently
* Monitor performance
* And keep the system secure

---
# 7. Repository Structure (tree format)
The following structure shows how the project is organized into different folders. Each folder has a specific responsibility, making the project easy to understand and maintain.

```bash
.
├── .github/
│   └── workflows/
│       └── deploy.yml              # CI/CD pipeline (GitHub Actions → ECR → EKS)
│
├── apps/
│   ├── fastapi/
│   │   ├── Dockerfile              # FastAPI container image
│   │   ├── main.py                 # API + Prometheus instrumentation
│   │   └── requirements.txt
│   │
│   └── website/
│       ├── Dockerfile              # Nginx-based static site
│       └── index.html
│
├── helm/
│   ├── fastapi/                    # Helm chart for FastAPI service
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── service.yaml
│   │       └── ingress.yaml
│   │
│   ├── website/                    # Helm chart for website
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   │       ├── deployment.yaml
│   │       ├── service.yaml
│   │       └── ingress.yaml
│   │
│   ├── kube-prometheus-stack/
│   │   └── values.yaml             # Observability configuration
│   │
│   └── observability-ingress.yaml  # Optional ingress for monitoring tools
│
├── terraform/
│   ├── infra/                      # Core AWS infrastructure
│   │   ├── main.tf
│   │   ├── providers.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── modules/
│   │       ├── network/            # VPC, subnets, routing
│   │       ├── iam/                # IAM roles (EKS, GitHub Actions, nodes)
│   │       ├── eks/                # EKS cluster + node group
│   │       ├── ecr/                # ECR repositories
│   │       └── bastion/            # Bastion host for cluster access
│   │
│   └── apps/                       # Kubernetes + observability layer
│       ├── main.tf
│       ├── providers.tf
│       ├── remote-state.tf         # Reads infra outputs
│       ├── kubernetes-auth.tf      # aws-auth ConfigMap
│       └── modules/
│           ├── ingress-nginx/      # NGINX Ingress Controller (Helm)
│           ├── observability/      # Prometheus, Grafana, Alertmanager
│           │   ├── helm-kube-prometheus.tf
│           │   └── grafana/
│           │       └── dashboards/
│           └── observability-routing/ # Ingress + proxy services
│
└── README.md                      # Project documentation
```

---

## 🔹 Folder Explanation (Simple Understanding)

### 📁 `.github/workflows/`

* Contains **GitHub Actions (Continuous Integration and Continuous Deployment - CI/CD)** pipeline
* Automatically builds and deploys the project

👉 *Example:* Like an automatic system that updates your application whenever code changes

---

### 📁 `apps/`

* Contains the **actual application code**

#### Inside this folder:

* **fastapi/** → Backend application
* **website/** → Frontend static website

👉 *In simple terms:* This is where your main application lives

---

### 📁 `helm/`

* Contains configuration files for **Helm (Kubernetes Package Manager)**
* Used to deploy applications on Kubernetes easily

👉 *Example:* Like templates used to install and manage applications

---

### 📁 `terraform/`

* Contains infrastructure setup using **Terraform (Infrastructure as Code - IaC)**

#### Two main parts:

* **infra/** → Creates cloud infrastructure (network, EKS, IAM, etc.)
* **apps/** → Deploys applications and monitoring tools

👉 *Example:* Like the blueprint and construction plan of the system

---

### 📁 Observability Components (Inside Helm & Terraform)

* Includes:

  * **Prometheus (Monitoring Tool)**
  * **Grafana (Visualization Tool)**
  * **Alertmanager (Alerting System)**

👉 *Purpose:* To monitor system performance and detect issues

---

### 📄 `README.md`

* Contains complete project documentation
* Helps users understand and run the project

---

## 🔹 In Simple Words

The project is divided into:

* **apps/** → Application code
* **helm/** → Deployment configuration
* **terraform/** → Infrastructure setup
* **.github/** → Automation (CI/CD)

👉 This separation makes the system:

* Easy to understand
* Easy to manage
* Easy to rebuild

---
# 8. Prerequisites

Before setting up and deploying this project, ensure that the following tools, accounts, and configurations are available.

---

### 📘 Setup Guide (Recommended)

A detailed step-by-step guide is provided to help you install and configure everything from scratch:

* 📄 **Setup Guide:** [`Setup Guide.pdf`](./Setup%20Guide.pdf)

👉 *This document explains complete setup including tool installation, AWS configuration, and deployment steps.*

---

## 🔧 Required Tools

The following tools must be installed on your system:

| **Tool**                                     | **Purpose**                                                       | **Verification Command**   |
| -------------------------------------------- | ----------------------------------------------------------------- | -------------------------- |
| **AWS Command Line Interface (AWS CLI)**     | Used to interact with Amazon Web Services (AWS) from the terminal | `aws configure`            |
| **Terraform (Infrastructure as Code - IaC)** | Used to create and manage cloud infrastructure automatically      | `terraform -version`       |
| **kubectl (Kubernetes Command Line Tool)**   | Used to interact with Kubernetes clusters                         | `kubectl version --client` |
| **Helm (Kubernetes Package Manager)**        | Used to deploy applications on Kubernetes easily                  | `helm version`             |
| **Docker (Container Platform)**              | Used to build and run containerized applications                  | `docker version`           |
| **Git (Version Control System)**             | Used to clone and manage project code                             | `git --version`            |

---

## ☁️ Cloud Requirements (Amazon Web Services - AWS)

You must have an active **Amazon Web Services (AWS)** account with permissions to create:

* Virtual Private Cloud (VPC)
* Subnets and networking components
* Network Address Translation (NAT) Gateway
* Amazon Elastic Kubernetes Service (EKS) cluster and node groups
* AWS Identity and Access Management (IAM) roles and policies
* Amazon Elastic Container Registry (ECR) repositories
* Load Balancers

### 📌 Additional Requirement:

* AWS region should be configured (default used: `us-east-1`)

---

## 🔐 GitHub Requirements

You need a GitHub repository with:

* **GitHub Actions (Continuous Integration and Continuous Deployment - CI/CD)** enabled
* Permission to configure **OpenID Connect (OIDC)** authentication with AWS

---

## 🔑 Secure Access (SSH Key for Bastion Host)

To securely access the system, an SSH key is required.

### 📌 Check if key exists:

```bash
~/.ssh/eks-bastion.pub
```

### 📌 If not, generate one:

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/eks-bastion
```

---

## 🔹 In Simple Words

Before starting, you need:

* Required tools installed
* AWS account ready
* GitHub automation enabled
* Secure access configured

---
# 9. Setup & Deployment

Follow the steps below to set up the infrastructure and deploy the application.

---

### 🔹 Step 1: Clone the Repository

Download the project code to your local system:

```bash id="s1a2b3"
git clone https://github.com/githubabhay2003/BTech-Major-Project-Cloud-Native-Observability-EKS.git
cd BTech-Major-Project-Cloud-Native-Observability-EKS
```

👉 *This step copies the entire project from GitHub to your system.*

---

### 🔹 Step 2: Provision Infrastructure

*(Terraform - Infrastructure Layer)*

Navigate to the infrastructure folder:

```bash id="s2a2b3"
cd terraform/infra
```

Initialize Terraform:

```bash id="s2b2b3"
terraform init
```

Apply the configuration:

```bash id="s2c2b3"
terraform apply
```

👉 *This step creates the complete cloud setup automatically.*

### 📌 Resources Created:

* Virtual Private Cloud (VPC)
* Subnets and networking components
* Network Address Translation (NAT) Gateway
* Amazon Elastic Kubernetes Service (EKS) cluster
* Node groups (servers for running applications)
* AWS Identity and Access Management (IAM) roles
* Amazon Elastic Container Registry (ECR)
* Bastion host for secure access

👉 *Real-World Example:*
Like building the entire infrastructure (building, network, security) before starting operations.

---

### 🔹 Step 3: Configure Kubernetes Access

Connect your local system to the Kubernetes cluster:

```bash id="s3a2b3"
aws eks update-kubeconfig \
  --region us-east-1 \
  --name eks-observability-cluster
```

Verify the connection:

```bash id="s3b2b3"
kubectl get nodes
```

👉 *If nodes are listed, your cluster is successfully connected.*

---

### 🔹 Step 4: Deploy Monitoring & Add-ons

*(Terraform - Application Layer)*

Navigate to the application layer:

```bash id="s4a2b3"
cd ../apps
```

Initialize Terraform:

```bash id="s4b2b3"
terraform init
```

Apply configuration:

```bash id="s4c2b3"
terraform apply
```

### 📌 This step installs:

* NGINX Ingress Controller (traffic routing system)
* Prometheus (monitoring tool)
* Grafana (dashboard visualization tool)
* Alertmanager (alerting system)
* Observability routing configuration

👉 *Real-World Example:*
Like installing monitoring cameras and dashboards after building the system.

---

### 🔹 Step 5: Deploy Applications

*(Recommended: Automated CI/CD)*

Push your code to GitHub:

```bash id="s5a2b3"
git push origin main
```

### 📌 What happens automatically:

* Builds Docker images for:

  * FastAPI backend
  * Website frontend
* Pushes images to Amazon Elastic Container Registry (ECR)
* Deploys applications to Kubernetes using Helm

👉 *This step uses GitHub Actions (Continuous Integration and Continuous Deployment - CI/CD).*

👉 *Real-World Example:*
Like an automatic system that builds and deploys your application whenever you update the code.

---

### 🔹 Step 6 (Optional): Manual Deployment using Helm

If needed, you can deploy applications manually:

```bash id="s6a2b3"
helm upgrade --install fastapi-app ./helm/fastapi \
  --set image.repository=<ECR_FASTAPI_REPO> \
  --set image.tag=<IMAGE_TAG>
```

```bash id="s6b2b3"
helm upgrade --install website ./helm/website \
  --set image.repository=<ECR_WEBSITE_REPO> \
  --set image.tag=<IMAGE_TAG>
```

👉 *Helm (Kubernetes Package Manager) is used to simplify deployment.*

---

## 🔹 End-to-End Flow (Quick Understanding)

1. Clone the project
2. Create infrastructure using Terraform
3. Connect to Kubernetes cluster
4. Install monitoring tools
5. Deploy application automatically

---

## 🔹 In Simple Words

This process:

* Builds the cloud system
* Connects everything together
* Installs monitoring tools
* Deploys your application automatically

---



