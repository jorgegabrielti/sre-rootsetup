# Test: [OK]
awscli_install () { 
  echo -e "\e[40;32;1m[TASK]: awscli_install\e[m\n"
  
  aws --version > /dev/null 2>&1 
  
  AWS CLI_INSTALL_STATUS_CHECK="$?"

  if [[ ${AWS CLI_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[AWS CLI already installed]\e[m: \e[32;1m$(aws --version)\e[m\n"
  else 
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \ 
      -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws --version
  fi 
}