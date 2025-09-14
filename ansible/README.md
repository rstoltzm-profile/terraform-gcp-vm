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

## Control minikube
```bash
ansible-playbook -i inv/hosts.ini playbooks/10-minikube-control.yaml -e minikube_action=start
ansible-playbook -i inv/hosts.ini playbooks/10-minikube-control.yaml -e minikube_action=stop
ansible-playbook -i inv/hosts.ini playbooks/10-minikube-control.yaml -e minikube_action=status
```

## Install basic tools
```bash
# minikube start --driver=docker
```

## Todo: Refactor use ansible roles and playbooks
```txt
ansible/
  roles/
    dependencies/
      tasks/
        main.yaml
    kubectl/
      tasks/
        main.yaml
    minikube/
      tasks/
        main.yaml
    privs/
      tasks/
        main.yaml
  playbooks/
    site.yaml
  inv/
    hosts.ini
```