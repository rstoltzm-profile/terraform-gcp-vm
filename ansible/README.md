# steps

## Setup and test ansible locally
```bash
sudo apt update
sudo apt install -y ansible
ansible -i inv/hosts.ini vm -m ping
```

## Run Playbooks
```bash
ansible-playbook -i inv/hosts.ini playbooks/01-dependencies.yaml
ansible-playbook -i inv/hosts.ini playbooks/02-kubectl.yaml
ansible-playbook -i inv/hosts.ini playbooks/03-minikube.yaml
ansible-playbook -i inv/hosts.ini playbooks/04-privs.yaml
```

## Install basic tools
```bash
#!/bin/bash
apt-get update -y
apt-get install -y curl apt-transport-https ca-certificates conntrack
```

## Install Docker
```bash
# Install Docker
apt-get install -y docker.io
systemctl enable --now docker
```

## Install kubectl
```bash
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/
```

# Install Minikube
```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube

# Add user to docker group
usermod -aG docker $USER

# Start Minikube (optional, can also do manually after SSH)
# minikube start --driver=docker
```