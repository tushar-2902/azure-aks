<!-- ================= 3D PREMIUM HEADER ================= -->

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:000428,50:004e92,100:00C6FF&height=260&section=header&text=Azure%20AKS%20Platform%20Engineering&fontSize=42&fontColor=ffffff&animation=twinkling" />
</p>

<p align="center">
  <b>Terraform • AKS • ACR • Azure Networking • Platform Engineering</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>
  <img src="https://img.shields.io/badge/IaC-Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/Container-Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white"/>
  <img src="https://img.shields.io/badge/Service-AKS-success?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Registry-ACR-red?style=for-the-badge"/>
</p>

---

# 🚀 Executive Summary

This repository demonstrates an **enterprise-grade Azure Kubernetes Service (AKS) platform** provisioned using **Terraform modular architecture**.

The solution follows Infrastructure as Code (IaC) principles and mimics real-world cloud platform engineering practices by deploying a complete Kubernetes environment with networking, container registry integration, and role assignments.

The infrastructure includes:

✅ Azure Resource Group

✅ Azure Virtual Network

✅ Azure Subnets

✅ Azure Container Registry (ACR)

✅ Azure Kubernetes Service (AKS)

✅ AKS ↔ ACR Role Assignment

✅ Environment-Based Deployment Structure

---

# 🧊 Solution Architecture

```text
┌───────────────────────────────────────────┐
│           Azure Subscription               │
└─────────────────────┬─────────────────────┘
                      │
                      ▼
┌───────────────────────────────────────────┐
│              Resource Group                │
└─────────────────────┬─────────────────────┘
                      │
                      ▼
┌───────────────────────────────────────────┐
│            Virtual Network                 │
└─────────────────────┬─────────────────────┘
                      │
                      ▼
┌───────────────────────────────────────────┐
│                 Subnets                    │
└──────────────┬────────────────────────────┘
               │
               ▼
      ┌──────────────────┐
      │ Azure AKS Cluster │
      └─────────┬────────┘
                │
                ▼
      ┌──────────────────┐
      │ Azure ACR        │
      │ Container Images │
      └─────────┬────────┘
                │
                ▼
      ┌──────────────────┐
      │ ACR Pull Role    │
      │ Assignment       │
      └──────────────────┘
```

---

# 📂 Repository Structure

```bash
azure-aks/
│
├── Env/
│   └── Dev/
│       ├── Main.tf
│       ├── Provider.tf
│       ├── variables.tf
│       └── terraform.tfvars
│
├── Modules/
│   ├── resource_group/
│   ├── Virtual_network/
│   ├── Subnets/
│   ├── acr/
│   ├── aks/
│   └── assignment_aks_acr/
│
└── README.md
```

---

# ⚙️ Terraform Module Design

## Resource Group Module

Creates Azure Resource Group for hosting all cloud resources.

---

## Virtual Network Module

Creates Azure Virtual Network for AKS networking.

---

## Subnet Module

Creates dedicated subnets for Kubernetes workloads.

---

## Azure Container Registry Module

Deploys Azure Container Registry for storing Docker images.

---

## Azure Kubernetes Service Module

Deploys managed Kubernetes cluster with Azure-native integration.

---

## AKS ACR Assignment Module

Assigns **AcrPull Role** to AKS Managed Identity for secure image pulling.

---

# 🚀 Deployment Workflow

```text
Terraform Apply
      │
      ▼
Resource Group
      │
      ▼
Virtual Network
      │
      ▼
Subnets
      │
      ▼
Azure Container Registry
      │
      ▼
Azure Kubernetes Service
      │
      ▼
ACR Role Assignment
      │
      ▼
Kubernetes Ready Platform
```

---

# 🚀 Deployment Steps

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Infrastructure Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

---

# ☸️ AKS Capabilities

- Managed Kubernetes Cluster
- Azure Native Integration
- Horizontal Scalability
- Secure Image Pulling
- Production Ready Architecture
- Enterprise Networking Support
- High Availability Design

---

# 🔐 Security Implementation

### Identity & Access

- Azure Managed Identity
- Role Based Access Control (RBAC)
- AcrPull Role Assignment

### Network Security

- VNet Isolation
- Dedicated Subnets
- Controlled Resource Access

### Infrastructure Security

- Infrastructure as Code
- Version Controlled Deployments
- Reproducible Environments

---

# 🧱 DevOps & Cloud Concepts Demonstrated

- Infrastructure as Code (Terraform)
- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)
- Terraform Modules
- Azure Networking
- Kubernetes Platform Engineering
- Cloud Automation
- Azure RBAC
- Environment Separation
- Enterprise Infrastructure Design

---

# 🛠️ Technology Stack

| Category | Technologies |
|-----------|-------------|
| Cloud | Microsoft Azure |
| IaC | Terraform |
| Container Platform | Kubernetes |
| Container Registry | Azure Container Registry |
| Networking | Azure VNet & Subnets |
| Security | RBAC, Managed Identity |
| Version Control | GitHub |

---

# 🔮 Future Enhancements

- GitHub Actions CI/CD
- Azure DevOps Pipelines
- Helm Deployments
- ArgoCD GitOps
- Azure Key Vault
- Ingress Controller
- Prometheus Monitoring
- Grafana Dashboards
- HPA Autoscaling
- Multi-Environment Deployment

---

# 👨‍💻 Author

## Tushar Mishra

**Junior DevOps Engineer**

☁️ Microsoft Certified: Azure Administrator Associate (AZ-104)

🚀 Azure • Kubernetes • Terraform • DevOps

📧 tusharmishra2902@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/tushar-devops/

🐙 GitHub: https://github.com/tushar-2902

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:00C6FF,50:004e92,100:000428&height=180&section=footer"/>
</p>
