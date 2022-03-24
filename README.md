# **Setup to SRE start to work**
[![Badge](https://img.shields.io/github/last-commit/jorgegabrielti/sre-rootsetup)](https://github.com/jorgegabrielti/sre-rootsetup)

About
==========
Project aimed at the initial configuration of a setup with the main tools for the **SRE** to start its work with more productivity.

[![Badge](https://img.shields.io/badge/Homologated-Ubuntu%20v20.04-orange)](https://ubuntu.com/download)
[![Badge](https://img.shields.io/badge/Requirements-git--scm-green)](https://git-scm.com/)


<h4 align="center"> 
	🚧 🚀 Building... 🚧
</h4>

Table of contents
==========
<!--ts-->
   * [About](#about)
   * [Table of contents](#table-of-contents)
   * [Features](#features)
   * [Requirements](#requirements)
   * [Clone the repository](#clone-repo)
   * [How to use](#how-to)
<!--te-->

## Feature
- [x] Packages utils
- [x] Python
- [x] Docker 
- [x] Kind
- [x] Kubectl
- [x] Istio
- [x] Ansible
- [x] Vagrant
- [x] Terraform
- [x] aws
- [x] gcloud

Requirements
==========
```bash
sudo apt update -y && \
  sudo apt install -y git curl
```

Clone the repository
==========
```bash
git clone https://github.com/jorgegabrielti/sre-rootsetup.git
```
How to use
==========

```bash
cd sre-rootsetup
chmod +x src/sre-setup
```
```bash
time src/sre-setup
```

