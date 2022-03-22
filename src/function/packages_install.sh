# Test: [OK]
packages_install () { 
  for ((c=0 ; c<=10; c++))
  do 
   PACKAGE[$c]="$(cat tool_list.txt | head -n$(($c + 1)) | tail -n1)"
  done
  sudo apt install -y ${PACKAGE[*]}
}
