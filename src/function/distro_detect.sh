# Test: [OK]
distro_detect () { 
  DISTRO="$(grep -Ei 'PRETTY_NAME' /etc/os-release | cut -d'=' -f2 | tr -d '"'  | cut -d'.' -f1,2)"
  
  case ${DISTRO} in
    "Ubuntu 20.04")
      echo -e "Distro: [${DISTRO}]\n"
    ;;
    *)
      echo "Distro: [${DISTRO}] ==> Not supported!"
    ;;
  esac
}
