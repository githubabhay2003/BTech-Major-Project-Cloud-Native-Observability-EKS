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
# 10. CI/CD Pipeline (Continuous Integration and Continuous Deployment)

This project uses **GitHub Actions (CI/CD platform)** to automate the process of building, storing, and deploying applications to the cloud.

---

### 🔹 What is CI/CD?

* **Continuous Integration (CI):** Automatically builds the application when code changes
* **Continuous Deployment (CD):** Automatically deploys the updated application

👉 *In simple terms:*
Whenever code is updated, the system builds and deploys it automatically without manual effort.

---

### 🔹 Trigger

* Pipeline runs automatically on:

  * Every push to the `main` branch

👉 *Example:*
When you upload new code, deployment starts automatically.

---

### 🔹 Secure Authentication

* Uses **OpenID Connect (OIDC)** for authentication
* Connects GitHub with **Amazon Web Services (AWS)** securely
* No need to store passwords or access keys

👉 *Benefit:* Improves system security

---

### 🔹 Pipeline Workflow (Step-by-Step)

1. **Checkout Code**

   * Downloads latest project code

2. **Configure AWS Access**

   * Connects to AWS using OIDC

3. **Authenticate with Amazon Elastic Container Registry (ECR)**

   * Enables pushing Docker images

4. **Build Docker Images**

   * Builds images for:

     * FastAPI backend
     * Website frontend

5. **Tag Images**

   * Uses unique commit ID for version tracking

6. **Push Images to ECR**

   * Stores images securely in AWS

7. **Configure Kubernetes Access**

   * Connects to **Amazon Elastic Kubernetes Service (EKS)**

8. **Deploy using Helm (Kubernetes Package Manager)**

   * Deploys or updates applications automatically

---

### 🔹 Deployment Strategy

* Uses **rolling updates** (no downtime)
* Uses **Helm upgrade/install** for reliable deployment
* Each version is tracked using commit ID

---

### 🔹 End-to-End Flow

```
Code Push → GitHub Actions → Build → Store → Deploy → Application Updated
```

---

### 🔹 Real-World Example

Think of it like an **automatic factory system**:

* You submit a design (code)
* The factory builds the product (Docker image)
* Stores it in warehouse (ECR)
* Delivers it to store (EKS)
* Updates happen automatically

---
# 11. Verification Steps

After deployment, follow the steps below to verify that the system is working correctly.

---

## 🔍 Step 1: Check Kubernetes Resources

Use the following commands to check whether all components are running properly.

### 📌 Check running applications (Pods)

```bash id="v1a"
kubectl get pods -A
```

### 📌 Check services

```bash id="v1b"
kubectl get svc
```

### 📌 Check ingress (traffic routing)

```bash id="v1c"
kubectl get ingress
```

👉 **Expected Result:**

* All pods should be in **Running** state
* Services should be available
* Ingress should show a valid external address

👉 *In simple terms:*
This step confirms that your system is running inside Kubernetes.

---

## 🌐 Step 2: Access the Application

Get the external URL of the system:

```bash id="v2a"
kubectl get svc -n ingress-nginx
```

Copy the **Load Balancer URL** and open it in a browser.

### 📌 Access different components:

* `http://<LOAD_BALANCER_URL>/` → Website
* `http://<LOAD_BALANCER_URL>/api` → Backend (FastAPI)
* `http://<LOAD_BALANCER_URL>/grafana` → Grafana dashboard
* `http://<LOAD_BALANCER_URL>/prometheus` → Prometheus UI
* `http://<LOAD_BALANCER_URL>/alertmanager` → Alertmanager UI

👉 **Expected Result:**

* Website should load successfully
* API should respond
* Monitoring tools should open

👉 *Real-World Example:*
Like checking whether all sections of a website are accessible after deployment.

---

## ❤️ Step 3: Validate Application Health

Check if the backend application is working properly:

```bash id="v3a"
curl http://<LOAD_BALANCER_URL>/api/health
```

### 📌 Expected Response:

```json id="v3b"
{"status": "ok"}
```

👉 *Meaning:*
The application is healthy and running correctly.

---

## 📊 Step 4: Verify Metrics Collection

Check if the system is generating monitoring data:

```bash id="v4a"
curl http://<LOAD_BALANCER_URL>/api/metrics
```

### 📌 In Prometheus UI:

* Open `/prometheus`
* Search for metrics such as:

  * `http_requests_total`
  * `http_request_duration_seconds`

👉 **Expected Result:**

* Metrics should be visible and updating

👉 *Meaning:*
The system is successfully collecting performance data.

---

## 📈 Step 5: Verify Grafana Dashboards

Open Grafana:

👉 `http://<LOAD_BALANCER_URL>/grafana`

### 📌 Login Credentials:

* Username: `admin`
* Password: `prom-operator`

### 📌 Verify:

* Dashboard is visible
* Metrics such as:

  * Requests per second (RPS)
  * Latency
  * Errors
* Data is updating in real time

👉 *Meaning:*
You can visually monitor system performance.

---

## 🚨 Step 6: Verify Alerting System

Open Alertmanager:

👉 `http://<LOAD_BALANCER_URL>/alertmanager`

### 📌 Verify:

* Alert configuration is loaded
* Alerts are visible when conditions are triggered

👉 *Example:*
If system performance drops, an alert should be generated.

---
# 12. Results

The project was successfully implemented and tested in a cloud environment using **Amazon Web Services (AWS)**. The results demonstrate that the system is fully functional, automated, and capable of real-time monitoring.

---

### 🔹 Successful Infrastructure Deployment

* Cloud infrastructure was created using **Terraform (Infrastructure as Code - IaC)**
* All resources were provisioned automatically, including:

  * Virtual Private Cloud (VPC)
  * Amazon Elastic Kubernetes Service (EKS) cluster
  * Networking and security components

👉 **Result:**
The entire system can be created from scratch without manual configuration.

---

### 🔹 Application Deployment on Kubernetes

* Backend (FastAPI) and frontend (Nginx) applications were successfully deployed on **Kubernetes (Amazon Elastic Kubernetes Service - EKS)**
* Applications were running in multiple replicas for reliability

👉 **Result:**
The system is scalable and remains available even if one instance fails.

---

### 🔹 Automated CI/CD Pipeline

* Implemented using **GitHub Actions (Continuous Integration and Continuous Deployment - CI/CD)**
* Application builds and deployments were triggered automatically on code changes

👉 **Result:**
Reduced manual effort and ensured faster, consistent deployments.

---

### 🔹 Real-Time Monitoring and Visualization

* Monitoring system implemented using:

  * **Prometheus (Monitoring Tool)**
  * **Grafana (Visualization Tool)**
* Metrics such as:

  * Request count
  * Response time
  * Error rate
    were successfully collected and displayed

👉 **Result:**
System performance can be tracked in real time through dashboards.

---

### 🔹 Alerting System Functionality

* **Alertmanager (Alerting System)** was configured to generate alerts
* Alerts were triggered when system thresholds were exceeded

👉 **Result:**
Issues can be detected early, improving system reliability.

---

### 🔹 System Accessibility and Routing

* External access was successfully configured using:

  * **NGINX Ingress Controller (Traffic Manager)**
  * AWS Load Balancer

👉 **Result:**
Users can access:

* Website
* Backend API
* Monitoring dashboards

from a single entry point.

---

### 🔹 Rebuild and Reliability Testing

* The system was tested by deleting and recreating infrastructure
* All components were restored successfully using automation

👉 **Result:**
The system is **reliable, reproducible, and rebuild-safe**.

---

### 🔹 Overall Outcome

* Fully automated cloud-based system developed
* Scalable and production-ready architecture achieved
* Real-time monitoring and alerting implemented
* Minimal manual intervention required

---
# 13. Challenges & Learnings

During the development of this project, multiple real-world challenges were encountered across different stages such as infrastructure setup, deployment, CI/CD, and monitoring. These challenges helped in gaining practical understanding and problem-solving skills.

---

## 🔹 1. Infrastructure & Terraform Challenges

| **Challenge**                          | **Root Cause**                                                        | **Solution Implemented**                                     | **Key Learning**                                  |
| -------------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------- |
| Infrastructure deletion failed         | Cloud resources (Load Balancer, network interfaces) were still active | Removed dependent resources before destroying infrastructure | Cloud resources must be deleted in correct order  |
| Terraform modules not working properly | Resources were directly referenced across modules                     | Passed values using inputs and outputs                       | Modules should be independent and reusable        |
| Terraform state conflicts              | Resources existed outside Terraform control                           | Used import and cleaned state                                | Always maintain a single source of truth          |
| Region mismatch issue                  | Different AWS regions used in configuration                           | Standardized region configuration                            | Cloud resources are region-specific               |

👉 *Real-World Insight:*
Like building a house — you cannot remove the foundation before removing the walls.

---

## 🔹 2. CI/CD & Automation Challenges

| **Challenge**                      | **Root Cause**                           | **Solution Implemented**                   | **Key Learning**                       |
| ---------------------------------- | ---------------------------------------- | ------------------------------------------ | -------------------------------------- |
| CI/CD pipeline failed              | Incorrect file paths after restructuring | Updated pipeline paths                     | CI/CD must match repository structure  |
| Image version confusion            | Used `latest` tag                        | Switched to commit-based tagging           | Always use unique versioning           |
| Authentication issues              | Use of static credentials                | Implemented OpenID Connect (OIDC)          | OIDC is more secure than static keys   |
| Deployment not triggering properly | Manual process dependency                | Automated using scripts and GitHub Actions | Automation reduces manual errors       |

👉 *Real-World Insight:*
Like an automatic factory — if instructions are wrong, the entire production fails.

---

## 🔹 3. Kubernetes & Deployment Challenges

| **Challenge**                | **Root Cause**                             | **Solution Implemented**         | **Key Learning**                        |
| ---------------------------- | ------------------------------------------ | -------------------------------- | --------------------------------------- |
| Application not accessible   | Service type was internal (ClusterIP)      | Used Ingress for external access | Internal services need proper exposure  |
| Namespace confusion          | Resources deployed in different namespaces | Standardized namespace usage     | Consistency is critical in Kubernetes   |
| Helm deployment issues       | Incorrect chart structure                  | Reorganized Helm charts          | Helm should be modular per service      |
| Duplicate resource conflicts | Same routes defined multiple times         | Removed duplicate configurations | Each resource must have a single owner  |

👉 *Real-World Insight:*
Like managing departments in a company — each department should have clear responsibility.

---

## 🔹 4. Networking & Ingress Challenges

| **Challenge**                        | **Root Cause**                   | **Solution Implemented**               | **Key Learning**                             |
| ------------------------------------ | -------------------------------- | -------------------------------------- | -------------------------------------------- |
| Traffic routing failures             | Duplicate or conflicting routes  | Cleaned and centralized routing        | Routing must be unique and consistent        |
| Monitoring tools not accessible      | Path mismatch in routing         | Configured proper subpath handling     | Applications must support routing paths      |
| Cross-namespace communication issues | Services in different namespaces | Used proxy services or unified routing | Kubernetes networking depends on namespaces  |

👉 *Real-World Insight:*
Like road traffic — if multiple roads lead to same destination incorrectly, it causes confusion.

---

## 🔹 5. Observability & Monitoring Challenges

| **Challenge**                  | **Root Cause**                   | **Solution Implemented**           | **Key Learning**                         |
| ------------------------------ | -------------------------------- | ---------------------------------- | ---------------------------------------- |
| Metrics not visible            | Application not exposing metrics | Added instrumentation (`/metrics`) | Applications must be observable          |
| Grafana dashboards not loading | Missing configuration            | Enabled dashboard provisioning     | Monitoring requires proper setup         |
| Alertmanager not working       | Incorrect configuration          | Fixed alert routing and receivers  | Alerting requires correct configuration  |
| Alerts not triggered           | System not tested under failure  | Simulated failure scenarios        | Always test failure cases                |

👉 *Real-World Insight:*
Like a hospital monitor — it is useful only if it shows correct data and alerts.

---

## 🔹 6. General & Design Challenges

| **Challenge**                               | **Root Cause**                     | **Solution Implemented**                         | **Key Learning**                        |
| ------------------------------------------- | ---------------------------------- | ------------------------------------------------ | --------------------------------------- |
| Overengineering risk                        | Use of complex tools unnecessarily | Selected simple architecture (Nginx static site) | Simplicity is better than complexity    |
| Manual steps were too many                  | Lack of automation                 | Created scripts and CI/CD pipeline               | Automate repetitive tasks               |
| Mixing infrastructure and application logic | Poor separation of concerns        | Separated Terraform and Helm layers              | Keep responsibilities separate          |
| Security gaps                               | Hardcoded credentials              | Moved towards secure practices (OIDC)            | Security should be built-in from start  |

👉 *Real-World Insight:*
Like organizing a system — clear roles and simplicity make it efficient.

---

## 🔹 Key Overall Learnings

* Infrastructure and application deployment should be **separate**
* Automation reduces manual errors and improves reliability
* Monitoring is incomplete without **alert validation**
* Security should avoid static credentials and use modern methods
* Systems should be **reproducible and idempotent**

---
# 14. Future Improvements

The current system is fully functional and follows a production-style architecture. However, based on real implementation experience, source code, and practical limitations, several improvements can further enhance **security, scalability, automation, and maintainability**.

---

## 🔹 1. Security Enhancements

| **Area**                             | **Current Limitation**                                                                   | **Future Improvement**                                                    | **Why It Matters (Simple Explanation)**                                  |
| ------------------------------------ | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Secrets Management                   | Sensitive data like SMTP credentials and Grafana password are hardcoded in configuration | Use **AWS Secrets Manager** or **Kubernetes Secrets** (encrypted storage) | Like storing passwords in a locker instead of writing them in a notebook |
| IAM (Identity and Access Management) | Broad permissions assigned to roles                                                      | Implement **least privilege access** (only required permissions)          | Reduces risk if any account is compromised                               |
| Bastion Host Access                  | SSH access allowed from anywhere (`0.0.0.0/0`)                                           | Restrict access to specific IP ranges                                     | Prevents unauthorized access from unknown users                          |
| Kubernetes Access Control            | Full admin access (`system:masters`) given to roles                                      | Use **Role-Based Access Control (RBAC)** with limited permissions         | Like giving employee-specific access instead of full admin rights        |

---

## 🔹 2. Infrastructure Improvements

| **Area**                   | **Current Limitation**           | **Future Improvement**                                   | **Real-World Benefit**                            |
| -------------------------- | -------------------------------- | -------------------------------------------------------- | ------------------------------------------------- |
| Terraform State Management | Local state file used            | Use **remote backend (Amazon S3 + DynamoDB)**            | Enables team collaboration and prevents conflicts |
| Environment Setup          | Single environment (dev)         | Add **multiple environments (dev, staging, production)** | Like testing in a lab before going live           |
| Resource Cleanup           | Manual or semi-automated cleanup | Add automated cleanup scripts                            | Reduces human errors during deletion              |

---

## 🔹 3. Kubernetes Enhancements

| **Area**            | **Current Limitation**                       | **Future Improvement**                        | **Why It Matters**                                   |
| ------------------- | -------------------------------------------- | --------------------------------------------- | ---------------------------------------------------- |
| Resource Management | No CPU/Memory limits defined in Helm charts  | Add **resource requests and limits**          | Prevents one app from consuming all system resources |
| Scalability         | Fixed number of pods (replicas)              | Implement **Horizontal Pod Autoscaler (HPA)** | Automatically scales based on traffic                |
| Availability        | No disruption handling                       | Add **Pod Disruption Budgets (PDB)**          | Ensures minimum app availability during updates      |
| Network Security    | No network restrictions                      | Add **Network Policies**                      | Controls which services can talk to each other       |

👉 *Example:*
Like a restaurant — if too many customers come, more staff (pods) should be added automatically.

---

## 🔹 4. Observability Improvements

| **Area**        | **Current Limitation**                                  | **Future Improvement**                                      | **Practical Impact**                         |
| --------------- | ------------------------------------------------------- | ----------------------------------------------------------- | -------------------------------------------- |
| Alerting System | Basic email alert setup with placeholder configuration  | Integrate **Slack / Email / PagerDuty** alerts              | Real-time notifications for failures         |
| Metrics         | Only default FastAPI metrics used (`/metrics`)          | Add **custom business metrics**                             | Better understanding of application behavior |
| Logging         | No centralized logging system                           | Add **Loki or ELK Stack (Elasticsearch, Logstash, Kibana)** | Helps in debugging issues quickly            |
| Dashboards      | Basic Grafana dashboards                                | Add advanced dashboards with more insights                  | Improves monitoring visibility               |

👉 *Example:*
Like a hospital monitor — not only heart rate, but also blood pressure and oxygen levels should be tracked.

---

## 🔹 5. CI/CD (Continuous Integration / Continuous Deployment) Improvements

| **Area**                | **Current Limitation**                  | **Future Improvement**                                            | **Why It Matters**                |
| ----------------------- | --------------------------------------- | ----------------------------------------------------------------- | --------------------------------- |
| Pipeline Validation     | No validation steps before deployment   | Add **linting (code quality checks)** for Terraform, Helm, Docker | Prevents errors before deployment |
| Security                | No scanning of images or infrastructure | Add **security scanning tools**                                   | Detects vulnerabilities early     |
| Deployment Strategy     | Direct deployment on push               | Add **approval stages and rollback strategy**                     | Safer deployments                 |
| Multi-Environment CI/CD | Only single environment deployment      | Add environment-based pipelines                                   | Better control over releases      |

👉 *Example:*
Like checking a product before shipping it to customers.

---

## 🔹 6. Networking & Access Improvements

| **Area**          | **Current Limitation**        | **Future Improvement**                               | **Real-World Benefit**                                                           |
| ----------------- | ----------------------------- | ---------------------------------------------------- | -------------------------------------------------------------------------------- |
| Domain Access     | Uses Load Balancer URL        | Configure **custom domain using Route53**            | Easier and professional access (e.g., [www.project.com](http://www.project.com)) |
| Security (HTTPS)  | Uses HTTP (not secure)        | Enable **HTTPS using AWS Certificate Manager (ACM)** | Encrypts data between user and server                                            |
| Monitoring Access | Publicly accessible endpoints | Add authentication (login protection)                | Prevents unauthorized viewing                                                    |

---

## 🔹 7. Developer Experience Improvements

| **Area**           | **Current Limitation**    | **Future Improvement**                       | **Benefit**               |
| ------------------ | ------------------------- | -------------------------------------------- | ------------------------- |
| Setup Process      | Multiple manual steps     | Add **bootstrap.sh script** for full setup   | One-command project setup |
| Deployment Control | Only automatic deployment | Add **deploy.sh script** for manual trigger  | More flexibility          |
| Documentation      | Basic instructions        | Improve onboarding and troubleshooting guide | Easier for new users      |

👉 *Example:*
Like installing an app with one click instead of multiple steps.

---

## 🔹 Key Takeaways (Simple Summary)

* Security should move from **basic → enterprise-level**
* Infrastructure should support **team collaboration**
* System should be able to **scale automatically**
* Monitoring should cover **metrics + logs + alerts**
* Deployment should be **safe, automated, and reversible**

---

## 🔹 Final Statement 

These future improvements demonstrate that the current system is not only functional but also **designed with scalability, security, and real-world production requirements in mind**. Implementing these enhancements would transform the system into a **fully enterprise-grade cloud-native platform**.

---
# 16. Screenshots (Proof of Implementation)

The following screenshots should be added after deployment to demonstrate that the system is fully functional and working as expected.

👉 *Tip:* Each screenshot should clearly show **real output**, not blank screens.

---

## 🌐 1. Application Layer (User View)

These screenshots prove that your application is accessible to users.

* **Website Homepage (Frontend)**

  * Shows the deployed static website
  * Confirms external access via Load Balancer

```md
![Website](docs/screenshots/website.png)
```

* **FastAPI API Endpoint Response**

  * Example: `/api` or `/api/health`
  * Shows JSON response

```md
![FastAPI](docs/screenshots/fastapi.png)
```

👉 *Why important:*
Proves that both frontend and backend are working.

---

## 📊 2. Observability (Monitoring Proof)

These screenshots prove that your system is **monitoring itself in real time**.

* **Grafana Dashboard (Golden Signals)**

  * Show metrics like:

    * Request rate
    * Latency
    * Errors

```md
![Grafana](docs/screenshots/grafana-dashboard.png)
```

* **Prometheus Targets / Metrics**

  * Show targets as **UP**
  * Show metrics like `http_requests_total`

```md
![Prometheus](docs/screenshots/prometheus.png)
```

* **Alertmanager UI**

  * Show alert configuration
  * If possible, show a triggered alert

```md
![Alertmanager](docs/screenshots/alertmanager.png)
```

👉 *Why important:*
This is your **main project theme (observability)** — must be shown clearly.

---

## ☸️ 3. Kubernetes (System Running Proof)

These screenshots prove that your system is running inside Kubernetes.

* **Pods Running**

```bash
kubectl get pods -A
```

```md
![Pods](docs/screenshots/kubectl-pods.png)
```

* **Services**

```bash
kubectl get svc
```

```md
![Services](docs/screenshots/services.png)
```

* **Ingress / Load Balancer**

```bash
kubectl get ingress
```

```md
![Ingress](docs/screenshots/ingress.png)
```

👉 *Why important:*
Shows system is deployed correctly inside **Kubernetes (Amazon Elastic Kubernetes Service - EKS)**.

---

## ⚙️ 4. CI/CD Pipeline (Automation Proof) ⭐ VERY IMPORTANT

This is one of the **highest scoring screenshots**.

* **GitHub Actions Pipeline Success**

  * Show:

    * Green check ✅
    * Steps like build, push, deploy

```md
![CI/CD](docs/screenshots/github-actions.png)
```

👉 *Why important:*
Proves **automation + DevOps implementation**

---

## ☁️ 5. Cloud Infrastructure (AWS Console Proof)

These screenshots prove that your system is actually deployed on cloud.

* **EKS Cluster Running**

```md
![EKS](docs/screenshots/eks-cluster.png)
```

* **Node Group / Worker Nodes**

```md
![Nodes](docs/screenshots/eks-nodes.png)
```

* **ECR Repositories (Images stored)**

```md
![ECR](docs/screenshots/ecr.png)
```

* **Load Balancer (External Access)**

```md
![LoadBalancer](docs/screenshots/loadbalancer.png)
```

👉 *Why important:*
Confirms real deployment on **Amazon Web Services (AWS)**.

---

## 🔐 6. Security & Access (Optional but High Value)

* **IAM Role for GitHub Actions (OIDC)**
* **No static credentials used**

```md
![IAM](docs/screenshots/iam-role.png)
```

👉 *Why important:*
Shows **secure architecture**, not just working system.

---

## 🔄 7. End-to-End Flow Proof (Advanced)

* Screenshot showing:

  * Code push → GitHub Actions → Deployment

👉 You can combine:

* GitHub commit
* Pipeline run
* Updated deployment

---

## 🔹 Recommended Folder Structure

```
docs/
└── screenshots/
    ├── website.png
    ├── fastapi.png
    ├── grafana-dashboard.png
    ├── prometheus.png
    ├── alertmanager.png
    ├── kubectl-pods.png
    ├── services.png
    ├── ingress.png
    ├── github-actions.png
    ├── eks-cluster.png
    ├── ecr.png
    └── loadbalancer.png
```

---
# 17. References (IEEE Format)

[1] Amazon Web Services, *“AWS Documentation,”* Available: [https://docs.aws.amazon.com/](https://docs.aws.amazon.com/)

[2] Amazon Web Services, *“Amazon Elastic Kubernetes Service (EKS),”* Available: [https://docs.aws.amazon.com/eks/](https://docs.aws.amazon.com/eks/)

[3] Amazon Web Services, *“Amazon Elastic Container Registry (ECR),”* Available: [https://docs.aws.amazon.com/ecr/](https://docs.aws.amazon.com/ecr/)

[4] Amazon Web Services, *“Virtual Private Cloud (VPC),”* Available: [https://docs.aws.amazon.com/vpc/](https://docs.aws.amazon.com/vpc/)

[5] HashiCorp, *“Terraform Documentation,”* Available: [https://developer.hashicorp.com/terraform/docs](https://developer.hashicorp.com/terraform/docs)

[6] HashiCorp, *“Terraform AWS Provider,”* Available: [https://registry.terraform.io/providers/hashicorp/aws/latest/docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

[7] Kubernetes, *“Kubernetes Documentation,”* Available: [https://kubernetes.io/docs/](https://kubernetes.io/docs/)

[8] Kubernetes, *“Kubernetes Concepts,”* Available: [https://kubernetes.io/docs/concepts/](https://kubernetes.io/docs/concepts/)

[9] Helm, *“Helm Documentation,”* Available: [https://helm.sh/docs/](https://helm.sh/docs/)

[10] Helm, *“Helm Charts Guide,”* Available: [https://helm.sh/docs/topics/charts/](https://helm.sh/docs/topics/charts/)

[11] GitHub, *“GitHub Actions Documentation,”* Available: [https://docs.github.com/en/actions](https://docs.github.com/en/actions)

[12] GitHub, *“OIDC for GitHub Actions,”* Available: [https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect)

[13] Docker Inc., *“Docker Documentation,”* Available: [https://docs.docker.com/](https://docs.docker.com/)

[14] Docker Inc., *“Docker Best Practices,”* Available: [https://docs.docker.com/develop/dev-best-practices/](https://docs.docker.com/develop/dev-best-practices/)

[15] FastAPI, *“FastAPI Documentation,”* Available: [https://fastapi.tiangolo.com/](https://fastapi.tiangolo.com/)

[16] NGINX, *“NGINX Documentation,”* Available: [https://nginx.org/en/docs/](https://nginx.org/en/docs/)

[17] Prometheus, *“Prometheus Documentation,”* Available: [https://prometheus.io/docs/](https://prometheus.io/docs/)

[18] Prometheus, *“Monitoring Best Practices,”* Available: [https://prometheus.io/docs/practices/](https://prometheus.io/docs/practices/)

[19] Grafana Labs, *“Grafana Documentation,”* Available: [https://grafana.com/docs/](https://grafana.com/docs/)

[20] Grafana Labs, *“Grafana Dashboards,”* Available: [https://grafana.com/grafana/dashboards/](https://grafana.com/grafana/dashboards/)

[21] Prometheus, *“Alertmanager Documentation,”* Available: [https://prometheus.io/docs/alerting/latest/alertmanager/](https://prometheus.io/docs/alerting/latest/alertmanager/)

[22] CNCF, *“Cloud Native Computing Foundation (CNCF) Landscape,”* Available: [https://landscape.cncf.io/](https://landscape.cncf.io/)

[23] Google Cloud, *“Site Reliability Engineering (SRE) Book,”* Available: [https://sre.google/sre-book/table-of-contents/](https://sre.google/sre-book/table-of-contents/)

[24] Microsoft, *“Cloud Architecture Patterns,”* Available: [https://learn.microsoft.com/en-us/azure/architecture/patterns/](https://learn.microsoft.com/en-us/azure/architecture/patterns/)

[25] Stack Overflow, *“Technical Discussions and Solutions,”* Available: [https://stackoverflow.com/](https://stackoverflow.com/)

[26] DigitalOcean, *“Kubernetes Tutorials,”* Available: [https://www.digitalocean.com/community/tutorials](https://www.digitalocean.com/community/tutorials)

[27] Medium, *“DevOps and Cloud Articles,”* Available: [https://medium.com/](https://medium.com/)

[28] Red Hat, *“Kubernetes and OpenShift Documentation,”* Available: [https://www.redhat.com/en/topics/containers/kubernetes](https://www.redhat.com/en/topics/containers/kubernetes)

---
# 18. Author & Team Details

This project was developed as part of the **8th Semester Major Project**.

* Details of team members, college, and branch are mentioned in the **project header section** above.

---
Perfect — here is your **final, clean, submission-ready License section** with your details properly filled 👇

---
# 19. License

This project is licensed under the **MIT License**, a widely used open-source license that allows flexibility in usage while ensuring proper credit to the original author.

---

### 🔹 Permissions

You are free to:

* Use this project for personal, academic, or commercial purposes
* Modify and improve the code
* Distribute or share the project

---

### 🔹 Conditions

* The original license and copyright notice must be included
* Proper credit must be given to the author

---

### 🔹 MIT License

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


