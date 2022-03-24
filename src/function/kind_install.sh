# Test: [OK]
kind_install () { 
  echo -e "\e[40;32;1m[TASK]: kind_install\e[m\n"
  kind version > /dev/null 2>&1 
  KIND_INSTALL_STATUS_CHECK="$?"

  if [[ ${KIND_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Kind already installed]\e[m: \e[32;1m$(kind version)\e[m\n"
  else 
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64
    chmod +x ./kind
    sudo mv -v ./kind  "$(echo ${PATH} | grep -Fo '/usr/bin')"/kind 
    kind version
  fi 
}