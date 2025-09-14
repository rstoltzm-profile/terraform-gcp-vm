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
terraform apply
```

## Check VM and ssh
```bash
gcloud compute instances describe PROJECT_NAME --zone=us-central1-a --project=PROJECT_ID
# this gens a key locally, google pushes the public key to vm authorized_keys
# you can see key locally in ~/.ssh/google_compute_engine
gcloud compute ssh vm-name --zone=us-central1-a --project=PROJECT_ID
```

## Basic Info
```bash
# Show OS release info
cat /etc/os-release

# Show kernel version
uname -a

# Show CPU info
lscpu

# Show memory info
free -h

# Show disk usage
df -h

# Show all block devices
lsblk

# Show network interfaces
ip addr
```