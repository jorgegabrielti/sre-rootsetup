# Test: [OK]
gcloud_install () { 
  echo -e "\e[40;32;1m[TASK]: gcloud_install\e[m\n"
  gcloud version > /dev/null 2>&1 
  GCLOUD_INSTALL_STATUS_CHECK="$?"

  if [[ ${GCLOUD_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\e[40;33;1m[gcloud already installed]\e[m:\n\e[32;1m$(gcloud version)\e[m\n"
  else 
    curl -so gcloud-x86_64.tar.gz \
      https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-309.0.0-linux-x86_64.tar.gz
    tar zxvf gcloud-x86_64.tar.gz -C ~/
    cd ~/google-cloud-sdk && ./install.sh
    cd -
    gcloud version
    rm -rf gcloud-x86_64.tar.gz 
  fi 
}