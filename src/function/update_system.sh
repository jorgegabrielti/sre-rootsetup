# Test: [OK]
update_system () {
  echo -e "\e[40;32;1m[TASK]: update_system\e[m\n"
  sudo locale-gen pt_BR.UTF-8 && \
    sudo update-locale LANG=pt_BR.UTF-8 
        
  sudo apt update -y && \
    sudo apt upgrade -y
}
