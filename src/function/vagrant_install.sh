# Test: [OK]
vagrant_install () { 
  echo -e "\e[40;32;1m[TASK]: vagrant_install\e[m\n"
  
  vagrant -v > /dev/null 2>&1 
  
  VAGRANT_INSTALL_STATUS_CHECK="$?"

  if [[ ${VAGRANT_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Vagrant already installed]\e[m: \e[32;1m$(vagrant -v)\e[m\n"
  else 
    curl -fsSL https://apt.releases.hashicorp.com/gpg \
      | sudo apt-key add -
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update -y \
      && sudo apt-get install -y vagrant
  fi 
}