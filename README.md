# SRE ROOT SETUP
<font color=\"red\">Homologated: Ubuntu 20.04.</font>
### **SETUP to SRE start to work**

### **Requisits**:
Git
```bash
sudo apt update -y && \
  sudo apt install -y git curl
```

#### First, clone the repository:
```bash
git clone https://github.com/jorgegabrielti/sre-rootsetup.git
```

#### Then, execute **sre-setup** script:

set permission:
```bash
cd sre-rootsetup
chmod +x src/sre-setup
```
```bash
src/sre-setup
```