#!/bin/bash 
#
# ##########################################################################
# +----------------------------------------------------------------------+ #
# |                 Backup Shell                                         | #
# +----------------------------------------------------------------------+ #
# |                                                                      | #
# | Name          : main.sh                                              | #
# | Function      : startup sre tools install                            | #
# | Version       : 1.0                                                  | #
# | Author        : Jorge Gabriel (SRE)                                  | #
# | Email         : jorgegabriel.ti@gmail.com                            | #
# +----------------------------------------------------------------------+ #
# ##########################################################################
#
# Description:
#
# Algortimo do script :
#  Install SRE tools for start work.
#


set -e

### Alias eXpands
shopt -s expand_aliases

### Workdir
WORK_DIR="${PWD}"

### Import functions
for FUNCTION in $(grep -F 'Test: [OK]' -l -r ${WORK_DIR}/function/); do
    sed -i 's/\r$//' ${FUNCTION}
    source ${FUNCTION}
done

# Distro Detect
distro_detect

#
#### Basic tools install
## TODO: criar arquivo com lista de todos os utilitários
## e preencher um array para instalar. 
#
## TODO: user firebug para sites cujo o download 
## de artefatos não seja tão simples. Usar curl em seguida.
#
#basic_tools_install () {
#    for ((c=0 ; c<=10; c++)) 
#    do 
#      PACKAGE[$c]="$(cat tool_list.txt | head -n$(($c + 1)) | tail -n1)"
#    done
#
#    sudo apt install -y ${PACKAGE[*]}
#}
#
#
#### Programing tools
## python
#sudo apt install -y \
#  build-essential \
#  libssl-dev libffi-dev \
#  python3-dev
#
#
#PYTHON_DOWNLOAD_URL="$(curl -s https://www.python.org/downloads/ \
#  | grep -F 'Download Python' \
#  | grep -E '\.tar\.xz' \
#  | grep -Eo 'https\:\/\/www\.python.org\/ftp\/python.*\.tar\.xz')"
#
#curl ${PYTHON_DOWNLOAD_URL} -o python.tar.xz 
#
#tar Jxvf python.tar.xz
#
#cd Python*
#
#./configure --enable-optimizations
#
#sudo make altinstall -j$(cat /proc/cpuinfo | grep -c processor)
#
#sudo update-alternatives \
#  --install /usr/bin/python \
#  python \
#  /usr/local/bin/python3.10 1
#
#python -V
#
#sudo apt install -y \
#  python3-venv python3-pip
#
#mkdir ~/python-projects/environments
#
#### Containers tools
## Docker
#curl -fsSL https://get.docker.com -o get-docker.sh
#sudo sh get-docker.sh
#
## Kubernetes
## kind
#
## Install and configure kubectl
#curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
#
#echo "$(<kubectl.sha256) kubectl" | sha256sum --check
#sudo install \
#  -o root \
#  -g root \
#  -m 0755 \
#  kubectl /usr/local/bin/kubectl
#
#kubectl version --client
#
## Configure bash_completion
#sudo apt-get install -y \
#  bash-completion
#source /usr/share/bash-completion/bash_completion
#bash && type _init_completion
#echo 'source <(kubectl completion bash)' >>~/.bashrc
#echo 'alias k=kubectl' >>~/.bashrc
#echo 'complete -F __start_kubectl k' >>~/.bashrc
#
#
## Lens
#https://api.k8slens.dev/binaries/Lens-5.4.1-latest.20220304.1.amd64.deb
#
#
## istio
#curl -L https://istio.io/downloadIstio | sh -
#cd istio-*
#
#istioctl install \ 
#  --set profile=default -y \
#  --set meshConfig.accessLogFile=/dev/stdout
#
#### IaC Tools
## Ansible
#sudo apt install -y \
#  software-properties-common
#
#sudo add-apt-repository --yes \
#  --update ppa:ansible/ansible
#
#sudo apt install -y \
#  ansible
#
#ansible --version
#
## Vagrant
#curl -fsSL https://apt.releases.hashicorp.com/gpg \
#  | sudo apt-key add -
#sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
#sudo apt-get update \
#  && sudo apt-get install vagrant
#
## Terraform
#curl -fsSL https://apt.releases.hashicorp.com/gpg \
#  | sudo apt-key add -
#sudo apt-add-repository \
#  "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
#sudo apt-get update -y \
#  && sudo apt-get install -y \
#  terraform
#
#terraform -v
#
#### Cloud Tools 
## aws-cli
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \ 
#  -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install
#
## gcloud
#echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
#  | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
#sudo apt-get install apt-transport-https ca-certificates gnupg
#curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
#  | sudo apt-key \
#    --keyring /usr/share/keyrings/cloud.google.gpg add -
#sudo apt-get update && sudo apt-get install google-cloud-sdk