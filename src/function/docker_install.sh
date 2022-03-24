# Test: [OK]
docker_install () { 
  echo -e "\e[40;32;1m[TASK]: docker_install\e[m\n"
  docker --version > /dev/null 2>&1 
  DOCKER_INSTALL_STATUS_CHECK="$?"

  if [[ ${DOCKER_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Docker already installed]\e[m: \e[32;1m$(docker --version)\e[m\n"
  else 
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    docker --version
    sudo rm -f get-docker.sh
    usermod -aG docker ${USER}
  fi 
}