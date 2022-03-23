# **Setup to SRE start to work**
[![Badge](https://img.shields.io/badge/Homologated-Ubuntu%20v20.04-orange)](https://ubuntu.com/download)
[![Badge](https://img.shields.io/badge/Requirements-git--scm-green)](https://git-scm.com/)

About
=================
Project aimed at the initial configuration of a setup with the main tools for the **SRE** to start its work with more productivity.

Table of contents
=================
<!--ts-->
   * [About](#about)
   * [Table of contents](#table-of-contents)
   * [Installation](#instalation)
   * [Clone the repository](#clone-repo)
   * [How to use](#how-to)
<!--te-->

Installation
=================
```bash
sudo apt update -y && \
  sudo apt install -y git curl
```

Clone the repository
==================
```bash
git clone https://github.com/jorgegabrielti/sre-rootsetup.git
```
How to use
==================

```bash
cd sre-rootsetup
chmod +x src/sre-setup
```
```bash
src/sre-setup
```

