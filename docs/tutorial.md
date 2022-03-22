### SRE - SETUP TOOLS ###

### Development

# *** Tools *** #

# Git (SCM - Source Code Managed)
sudo apt install -y git

# Visualcode

# Download
https://code.visualstudio.com/download

# Instalação do pacote
sudo dpkg -i code_1.65.2-1646927742_amd64.deb

# Ajustes
Arquivo - Preferences - Configurations

# Plugins (Ctrl+Shift+X): https://marketplace.visualstudio.com/
- Bash IDE: https://marketplace.visualstudio.com/items?itemName=mads-hartmann.bash-ide-vscode

- Bash Beautify: https://marketplace.visualstudio.com/items?itemName=shakram02.bash-beautify

- Python: https://marketplace.visualstudio.com/items?itemName=ms-python.python

- JSON: https://marketplace.visualstudio.com/items?itemName=ZainChen.json

- YAML: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml 

- Docker: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker

- Kubernetes: https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools

- Kind: https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.kind-vscode


# cli visualcode
Ctrl-P
ext install mads-hartmann.bash-ide-vscode
ext install shakram02.bash-beautify
ext install ms-azuretools.vscode-docker
ext install ms-kubernetes-tools.vscode-kubernetes-tools
ext install ms-kubernetes-tools.kind-vscode
ext install ms-python.python
ext install redhat.vscode-yaml
ext install ZainChen.json


# Atalhos do vscode
- Ctrl+Shift+X: plugins
- Ctrl+P      : lista de arquivos/comandos do vscode
- Ctrl+P @    : estruturas de programção em um arquivo
- Ctrl+Shift+l: identifica um padrão e altera todas as suas ocorrências
- Ctrl+Space  : help de atributos
- Ctrl+Shift+G: Source control (integração com git)
- Ctrl+\      : Dividir a tela no meio
- Ctrl+f      : busca ocorrências no arquivo
- Ctrl+h      : replace de ocorrências
- Alt+up|down : mover blocos de textos
- Ctrl+c      : copia linha do cursor
- Ctrl+v      : cola linha copiada
- Ctrl+Shift+d: debuger


# Para criar um novo repositório
echo "# sre-rootsetup" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:jorgegabrielti/sre-rootsetup.git
git push -u origin master

# Para sincronizar um repositório local
git remote add origin git@github.com:jorgegabrielti/sre-rootsetup.git
git branch -M master
git push -u origin master