# Test: [OK]
distro_detect () { 
  DISTRO="$(grep -Ei 'PRETTY_NAME' /etc/os-release | cut -d'=' -f2 | tr -d '"'  | cut -d'.' -f1,2)"
  
  case ${DISTRO} in
    "Ubuntu 20.04")
      sudo locale-gen pt_BR.UTF-8 && \
        sudo update-locale LANG=pt_BR.UTF-8 
        
      sudo apt update -y && \
        sudo apt upgrade -y
    ;;
    *)
      echo "Distro: [${DISTRO}] ==> Not supported!"
    ;;
  esac
}
