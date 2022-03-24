# Test: [OK]
ansible_install () { 
  echo -e "\e[40;32;1m[TASK]: ansible_install\e[m\n"
  
  ansible --version > /dev/null 2>&1 
  
  ANSIBLE_INSTALL_STATUS_CHECK="$?"

  if [[ ${ANSIBLE_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Ansible already installed]\e[m: \e[32;1m$(ansible --version)\e[m\n"
  else 
    sudo apt install -y software-properties-common

    sudo add-apt-repository --yes --update ppa:ansible/ansible

    sudo apt install -y ansible
    ansible --version
  fi 
}