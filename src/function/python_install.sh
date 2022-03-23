# Test: [OK]
python_install () { 
  echo -e "\e[40;32;1m[TASK]: python_install\e[m\n"
  sudo apt install -y \
    build-essential \
    libssl-dev libffi-dev \
    python3-dev
  
  PYTHON_DOWNLOAD_URL="$(curl -s https://www.python.org/downloads/ \
    | grep -F 'Download Python' \
    | grep -E '\.tar\.xz' \
    | grep -Eo 'https\:\/\/www\.python.org\/ftp\/python.*\.tar\.xz')"
  
  curl ${PYTHON_DOWNLOAD_URL} -o python.tar.xz 
  
  tar Jxvf python.tar.xz
  
  cd Python*
  
  ./configure --enable-optimizations
  
  sudo make altinstall -j$(cat /proc/cpuinfo | grep -c processor)
  
  sudo update-alternatives \
    --install /usr/bin/python \
    python \
    /usr/local/bin/python3.10 1
  
  python -V
  
  sudo apt install -y \
    python3-venv python3-pip
}Eu Eu 