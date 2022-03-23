# Test: [OK]
kubectl_install () { 
  echo -e "\e[40;32;1m[TASK]: kubectl\e[m\n"
  
  kubectl version --client > /dev/null 2>&1 
  
  KUBECTL_INSTALL_STATUS_CHECK="$?"

  if [[ ${KUBECTL_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Kubectl already installed]\e[m: \e[32;1m$(kubectl version --client)\e[m\n"
  else 
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
    echo "$(<kubectl.sha256) kubectl" | sha256sum --check
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    kubectl version --client
    
    ## Configure bash_completion
    sudo apt-get install -y \
      bash-completion
    source /usr/share/bash-completion/bash_completion
    bash && type _init_completion
    echo 'source <(kubectl completion bash)' >>~/.bashrc
    echo 'alias k=kubectl' >>~/.bashrc
    echo 'complete -F __start_kubectl k' >>~/.bashrc
  fi 
}