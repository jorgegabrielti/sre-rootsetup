# Test: [OK]
istio_install () { 
  echo -e "\e[40;32;1m[TASK]: istio_install\e[m\n"
  istioctl version > /dev/null 2>&1
  ISTIO_INSTALL_STATUS_CHECK="$?"

  if [[ ${ISTIO_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Istio already installed]\e[m: \e[32;1m$(istioctl version 2> /dev/null)\e[m\n"
  else 
    curl -L https://istio.io/downloadIstio | sh -
    cd istio-*
    sudo cp -v ./bin/istioctl "$(echo ${PATH} | grep -Fo '/usr/bin')/istioctl"
    istioctl version 2> /dev/null
    cd -
    rm -rf istio-*
  fi 
}