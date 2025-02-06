# 🚀 Enterprise Azure Terraform Infrastructure

## 🔥 Overview
This repository contains **Terraform configurations** to deploy an **enterprise-grade Azure cloud infrastructure** using best practices.

✅ **Infrastructure as Code (IaC) with Terraform**  
✅ **Scalable & Secure Networking (VNet, Subnets, NSGs)**  
✅ **Compute Resources (Azure Kubernetes Service - AKS)**  
✅ **Security (Azure Key Vault, RBAC, NSG, Secrets Management)**  
✅ **Observability & Logging (Azure Monitor, Log Analytics)**  
✅ **CI/CD Pipeline (GitHub Actions for Terraform Automation)**  

---

## 🏗 **Project Architecture**
📌 The following components are provisioned using Terraform:

| **Component** | **Description** |
|--------------|-------------|
| **Azure Resource Group** | Central container for all deployed resources |
| **Azure Virtual Network (VNet)** | Secure network for cloud resources |
| **Subnets** | Separate zones for AKS, App Services, and DBs |
| **Azure Kubernetes Service (AKS)** | Managed Kubernetes cluster for microservices |
| **Network Security Groups (NSG)** | Secure traffic control |
| **Azure Key Vault** | Stores sensitive secrets securely |
| **Azure Log Analytics** | Enables monitoring and centralized logging |

---

## **🖥️ Architecture Diagram**
📌
                      +--------------------------+
                      |    Azure Resource Group  |
                      +--------------------------+
                                 |
            --------------------------------------
            |                    |              |
       +-------+            +-----------+    +------+
       |  VNet |            |  AKS       |    | NSG  |
       +-------+            +-----------+    +------+
            |                    |              
       +-------+            +------------+
       |Subnet|            |  Key Vault  |
       +-------+            +------------+
```

---

## 🛠 **Project Setup**
### 📌 **1️⃣ Prerequisites**
Ensure you have the following installed:
- **Terraform** → [Install Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- **Azure CLI** → [Install Guide](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- **Git** → [Install Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

---

### 📌 **2️⃣ Clone the Repository**
```bash
git clone https://github.com/yourusername/enterprise-azure-terraform.git
cd enterprise-azure-terraform
```

---

### 📌 **3️⃣ Initialize Terraform**
```bash
terraform init
```

---

### 📌 **4️⃣ Plan and Deploy**
Run Terraform to preview the deployment:
```bash
terraform plan
```
Apply the infrastructure:
```bash
terraform apply -auto-approve
```

---

### 📌 **5️⃣ Destroy Infrastructure (Optional)**
To delete all deployed resources and avoid charges:
```bash
terraform destroy -auto-approve
```

---

## **📁 Project Structure**
```sh
enterprise-azure-terraform/
│── modules/
│   ├── networking/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── security/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── monitoring/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│── provider.tf
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars
│── .github/workflows/terraform-ci.yml
│── .gitignore
│── README.md
```

---

## **🔐 Security Best Practices**
✅ **Never commit `terraform.tfvars` to GitHub** (contains sensitive values)  
✅ **Use Azure Key Vault** for storing secrets and credentials  
✅ **Implement RBAC (Role-Based Access Control)** for better access management  
✅ **Restrict network access** using NSGs and firewalls  

---

## **🔄 CI/CD Pipeline (GitHub Actions)**
This repository includes a **GitHub Actions pipeline** for **automated Terraform deployments**.

📌 **Pipeline Workflow (`.github/workflows/terraform-ci.yml`)**
```yaml
name: 'Terraform Deployment'

on:
  push:
    branches:
      - main

jobs:
  terraform:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v1

      - name: Terraform Init
        run: terraform init

      - name: Terraform Plan
        run: terraform plan -out=tfplan

      - name: Terraform Apply
        if: github.ref == 'refs/heads/main'
        run: terraform apply -auto-approve tfplan
```

---

## **🚀 Future Enhancements**
🔹 **Integrate Azure Load Balancer** for enhanced high availability  
🔹 **Add Terraform State Locking** with Azure Storage Account  
🔹 **Implement Auto-Scaling for AKS & VMs**  
🔹 **Deploy a Sample Web App on AKS**  

---

## **📜 References**
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure Kubernetes Service (AKS)](https://docs.microsoft.com/en-us/azure/aks/)
- [Terraform State Management](https://developer.hashicorp.com/terraform/tutorials/state/state-cli)

---

## **👨‍💻 About Me**
**Rishita Thumu**  
💼 **Cloud/DevOps Engineer** | **Azure | AWS | Terraform | Kubernetes**  
📧 rishithumu27@gmail.com  

---

## **📢 How to Use This Project?**
Recruiters and engineers can explore this project to understand:
- How **Terraform automates enterprise-grade infrastructure** in Azure
- How **modularized Terraform code improves maintainability**
- How **CI/CD pipelines streamline deployments**

---

## **🎯 Final Steps**
✅ **Commit & Push `README.md` to GitHub**:
```bash
git add README.md
git commit -m "Added README for enterprise Terraform project"
git push origin main
```
✅ **Share GitHub Link on LinkedIn & Resume**  
✅ **Be Ready to Discuss This Project in Interviews**  

---
