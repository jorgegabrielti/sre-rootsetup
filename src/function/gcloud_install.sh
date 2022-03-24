# Test: [OK]
gcloud_install () { 
  echo -e "\e[40;32;1m[TASK]: gcloud_install\e[m\n"
  gcloud version > /dev/null 2>&1 
  GCLOUD_INSTALL_STATUS_CHECK="$?"

  if [[ ${GCLOUD_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[gcloud already installed]\e[m: \e[32;1m$(gcloud version)\e[m\n"
  else 
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
      | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    sudo apt-get install apt-transport-https ca-certificates gnupg
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
      | sudo apt-key \
        --keyring /usr/share/keyrings/cloud.google.gpg add -
    sudo apt-get update && sudo apt-get install google-cloud-sdk
    gcloud version
  fi 
}
gcloud_install