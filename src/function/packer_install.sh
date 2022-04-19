# Test: [OK]
packer_install () { 
  echo -e "\e[40;32;1m[TASK]: packer_install\e[m\n"
  packer --version > /dev/null 2>&1 
  PACKER_INSTALL_STATUS_CHECK="$?"

  if [[ ${PACKER_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Hashicorp Packer already installed]\e[m: \e[32;1m$(packer --version)\e[m\n"
  else 
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update && sudo apt-get install packer
    packer --version
  fi 
}