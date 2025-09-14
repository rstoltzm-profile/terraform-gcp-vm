# GCP Minikube VM Automation

Provision a Google Cloud VM and set up a Minikube Kubernetes environment using Terraform and Ansible.

## Prerequisites

- [gcloud CLI](https://cloud.google.com/sdk/docs/install)
- [Terraform](https://developer.hashicorp.com/terraform/install)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- GCP project with billing enabled

## Setup

- see docs/SETUP.md

## Notes

- VM is tagged for HTTP/HTTPS access.
- Ansible automates Docker, kubectl, and Minikube setup.
- Update your Ansible inventory (`inv/hosts.ini`) with the VM’s external IP after each deployment.
