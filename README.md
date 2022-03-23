# **Setup to SRE start to work**
[![Badge](https://img.shields.io/badge/Homologated-Ubuntu%20v20.04-orange)](https://ubuntu.com/download)
[![Badge](https://img.shields.io/badge/Requirements-git--scm-green)](https://git-scm.com/)

#### Update system
```bash
sudo apt update -y && \
  sudo apt install -y git curl
```

#### Clone the repository:
```bash
git clone https://github.com/jorgegabrielti/sre-rootsetup.git
```

#### Then, execute **sre-setup** script:

```bash
cd sre-rootsetup
chmod +x src/sre-setup
```
```bash
src/sre-setup
```

