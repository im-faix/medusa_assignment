# Medusa Headless Commerce on AWS ECS with Fargate 🚀

This project uses **Terraform** to provision the infrastructure on AWS and **GitHub Actions** to enable Continuous Deployment of the Medusa backend container.

---

## 📦 Tech Stack
- AWS ECS with Fargate
- AWS ECR (Elastic Container Registry)
- Terraform
- GitHub Actions
- Docker
- MedusaJS (Headless Commerce)

---

## 🧱 Infrastructure (Terraform)
- VPC with Public and Private Subnets
- ECS Cluster and Service
- Fargate Task Definition for Medusa backend
- Security Group to allow port `9000`
- ECR Repository

---

## 📦 Containerization (Docker)
The Dockerfile uses:
- `node:18-alpine`
- Installs Medusa CLI
- Creates a new app using `medusa new`
- Runs it in production on port 9000

---

## 🔁 CI/CD (GitHub Actions)
The `.github/workflows/deploy.yml`:
- Builds the Docker image
- Pushes it to ECR
- Triggers ECS Fargate to do a rolling update of the service

Secrets required:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `ECR_REPO`

---

## 🚀 Deployment Steps

1. Clone the repo
2. Set your AWS credentials as secrets in GitHub
3. Update `database_url` variable in `terraform.tfvars`
4. Run:
   ```bash
   terraform init
   terraform apply
