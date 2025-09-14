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
gcloud compute images list --project=ubuntu-os-cloud --no-standard-images --filter="name~'ubuntu.*'" --sort-by=~creationTimestamp
# update image in main.tf
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
cat /etc/os-release
uname -a
lscpu | grep "CPU(s):"
free -h
df -h
lsblk
ip addr
```