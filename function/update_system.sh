# Test: [OK]
update_system () { 
  sudo locale-gen pt_BR.UTF-8 && \
    sudo update-locale LANG=pt_BR.UTF-8 
        
  sudo apt update -y && \
    sudo apt upgrade -y
}
