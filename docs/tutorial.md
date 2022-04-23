# **SRE - SETUP TOOLS** ###

# **Development**
## **Git (SCM - Source Code Managed)**
```bash
sudo apt install -y git
```

#### Create a new repository
```bash
echo "# <GITHUB REPO NAME>" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:<GITHUB USER>/<GITHUB REPO NAME>.git
git push -u origin master
```

#### Sync a local repository
```bash
git remote add origin git@github.com:<GITHUB USER>/<GITHUB REPO NAME>.git
git branch -M master
git push -u origin master
```

## **Visualcode**

#### Download
**https://code.visualstudio.com/download**


### Packages installation
```bash
sudo dpkg -i code_1.65.2-1646927742_amd64.deb
```
### **Plugins**
**File - Preferences - Configurations**

#### **Plugins (Ctrl+Shift+X)**: https://marketplace.visualstudio.com/

- Gitlens: https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens

- Bash IDE: https://marketplace.visualstudio.com/items?itemName=mads-hartmann.bash-ide-vscode

- Bash Beautify: https://marketplace.visualstudio.com/items?itemName=shakram02.bash-beautify

- Python: https://marketplace.visualstudio.com/items?itemName=ms-python.python

- JSON: https://marketplace.visualstudio.com/items?itemName=ZainChen.json

- YAML: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml 

- Docker: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker

- Kubernetes: https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools

- Kind: https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.kind-vscode

- Markdown All in One: https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one

- Code Runner: https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner
#### CLI Visualcode
```
Ctrl-P
```

#### Top pluging installation
```
ext install mads-hartmann.bash-ide-vscode
ext install shakram02.bash-beautify
ext install ms-azuretools.vscode-docker
ext install ms-kubernetes-tools.vscode-kubernetes-tools
ext install ms-kubernetes-tools.kind-vscode
ext install ms-python.python
ext install redhat.vscode-yaml
ext install ZainChen.json
ext install eamodio.gitlens
ext install yzhang.markdown-all-in-one
ext install formulahendry.code-runner
ext install redhat.ansible
ext install wholroyd.HCL
ext install marcostazi.VS-code-vagrantfile
```

### VSCode shortcuts
- **Ctrl+Shift+X**  : plugins
- **Ctrl+P**        : lista de arquivos/comandos do vscode
- **Ctrl+P @**      : estruturas de programção em um arquivo
- **Ctrl+Shift+l**  : identifica um padrão e altera todas as suas ocorrências
- **Ctrl+Space**    : help de atributos
- **Ctrl+Shift+G**  : Source control (integração com git)
- **Ctrl+\\**       : Dividir a tela no meio
- **Ctrl+f**        : busca ocorrências no arquivo
- **Ctrl+h**        : replace de ocorrências
- **Alt+up|down**   : mover blocos de textos
- **Ctrl+c**        : copia linha do cursor
- **Ctrl+v**        : cola linha copiada
- **Ctrl+Shift+d**  : debuger
- **Ctrl+Shift+´**  : open terminal

# **IaC**
## **Virtualbox**
#### Download
**https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb**

**Requiriments**:
```bash
sudo apt install -y \
  libqt5opengl5\
  libsdl1.2debian
```
#### Download
**https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb**

**Requiriments**:
```bash
sudo apt install -y \
  libqt5opengl5\
  libsdl1.2debian
```

**Download package .deb**
```bash
curl https://download.virtualbox.org/virtualbox/6.1.32/virtualbox-6.1_6.1.32-149290~Ubuntu~eoan_amd64.deb -o virtualbox.deb
```

**Install package .deb**
```bash
sudo dpkg -i virtualbox-6.1_6.1.32-149290_Ubuntu_eoan_amd64.deb
```

## **Vagrant**
**https://www.vagrantup.com/downloads**

**Installation**
```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant
```
More in: **https://github.com/jorgegabrielti/vagrant**

## **Lens//THE KUBERNETES PLATFORM**
**https://k8slens.dev/**
