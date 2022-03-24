# Test: [OK]
python_install () { 
  echo -e "\e[40;32;1m[TASK]: python_install\e[m\n"
  python -V > /dev/null 2>&1
  PYTHON_INSTALL_STATUS_CHECK="$?"

  if [[ ${PYTHON_INSTALL_STATUS_CHECK} == "0" ]]; then
    echo -e "\t\e[40;33;1m[Python already installed]\e[m: \e[32;1m$(python -V)\e[m\n"
  else 
    sudo apt install -y \
      build-essential \
      libssl-dev libffi-dev \
      python3-dev
    
    PYTHON_DOWNLOAD_URL="$(curl -s https://www.python.org/downloads/ \
      | grep -F 'Download Python' \
      | grep -E '\.tar\.xz' \
      | grep -Eo 'https\:\/\/www\.python.org\/ftp\/python.*\.tar\.xz')"
    
    sudo curl ${PYTHON_DOWNLOAD_URL} \
      -o /opt/python.tar.xz 
    tar Jxvf /opt/python.tar.xz -C /tmp
    cd /tmp/Python*
    ./configure --enable-optimizations
    sudo make altinstall -j$(cat /proc/cpuinfo | grep -c processor)
    sudo update-alternatives \
      --install /usr/bin/python \
      python \
      /usr/local/bin/python3.10 1
    python -V && \
      cd - && rm -rf /tmp/Python*
  fi 
  
  ### Check if pip install
  echo -e "\e[40;32;1m[TASK]: pip_install\e[m\n"
  pip -V
  PIP_INSTALL_STATUS="$(echo $?)"
  if [ "$?" == "0" ]; then
    echo -e "\t\e[40;33;1m[Pip already installed]\e[m: \e[32;1m$(pip -V)\e[m"
  else 
    sudo apt install -y \
      python3-venv python3-pip
  fi
  echo -e "\t\e[40;33;1m[Create a directory to your projects]\e[m: \e[32;1m$(echo ~/python-projects/environments)\e[m\n"
  mkdir -p ~/python-projects/environments
}