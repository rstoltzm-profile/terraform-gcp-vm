# Setup

## GCP Project
```bash
gcloud init
gcloud projects list
gcloud config set project PROJECT_ID
gcloud services enable compute.googleapis.com
gcloud beta billing projects describe PROJECT_ID
```

## Terraform
```bash
cd terraform/create_vm
terraform init
terraform plan
```