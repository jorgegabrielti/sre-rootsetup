# Test: [OK]
packages_install () { 
  echo -e "\e[40;32;1m[TASK]: packages_install\e[m\n"
  for ((c=0 ; c<=$(wc -l src/conf/packages.txt | awk '{print $1}'); c++))
  do 
   pwd
   PACKAGE[$c]="$(cat src/conf/packages.txt | head -n$(($c + 1)) | tail -n1)"
  done

  sudo apt install -y ${PACKAGE[*]}
}
