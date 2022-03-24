# Test: [OK]
terraform_install () { 
  echo -e "\e[40;32;1m[TASK]: terraform_install\e[m\n"
  terraform -v > /dev/null 2>&1 
  TERRAFORM_INSTALL_STATUS_CHECK="$?"

  if [[ ${TERRAFORM_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Terraform already installed]\e[m: \e[32;1m$(terraform -v)\e[m\n"
  else 
    curl -fsSL https://apt.releases.hashicorp.com/gpg \
      | sudo apt-key add -
    sudo apt-add-repository \
      "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update -y \
      && sudo apt-get install -y terraform
    terraform -v
  fi 
}