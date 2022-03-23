# **Setup to SRE start to work**

**Requiriments**:

[![Badge](https://img.shields.io/badge/Ubuntu-v20.04-orange)](https://ubuntu.com/download)
[![Badge](https://img.shields.io/badge/Git-CLI-green)](https://git-scm.com/)


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

