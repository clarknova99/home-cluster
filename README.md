<div align="center">

<img src="https://camo.githubusercontent.com/5b298bf6b0596795602bd771c5bddbb963e83e0f/68747470733a2f2f692e696d6775722e636f6d2f7031527a586a512e706e67" align="center" width="144px" height="144px"/>

</div>

<br/>

<div align="center">

[![k3s](https://img.shields.io/badge/k3s-v1.26-brightgreen?logo=kubernetes&logoColor=white)](https://k3s.io/)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?logo=renovatebot&logoColor=white)](https://github.com/renovatebot/renovate)
[![Lines of code](https://img.shields.io/tokei/lines/github/clarknova99/home-cluster?color=brightgreen&label=lines&logo=codefactor&logoColor=white)](https://github.com/clarknova99/home-cluster)


</div>

---

## :book:&nbsp; Overview

The repo is home for the code to automate the provisioning and management of my Kubernetes cluster.
* [ansible](https://www.ansible.com) for provisioning [proxmox](https://www.proxmox.com/en/) VMs & bootstrapping Ubuntu servers with [K3s](https://k3s.io).
* [flux](https://toolkit.fluxcd.io)  watches this git repo and applies changes to Kubernetes when they are pushed to the repo.
* [renovate](https://github.com/renovatebot/renovate) monitors the repo, creating pull requests when it finds updates to dependencies.

## :gear: Core Components
* [cilium](https://cilium.io/) for network management
* [cert-manager](https://cert-manager.io) to request SSL certificates to store as Kubernetes resources
* [sops](https://github.com/mozilla/sops) with [age](https://github.com/FiloSottile/age) to encrypt secrets used in Ansible & Flux
* [ingress-nginx](https://github.com/kubernetes/ingress-nginx): Kubernetes ingress controller used for HTTP reverse proxy of service ingresses



## 🔧 Hardware
| Device | Count | Ram | Operating System | Purpose |
| --- | --- | --- | --- | --- |
| Intel NUC11PAHi7 | 1   | 64GB | Promox | Kubernetes Masters |
| Intel NUC8i5BEH | 1   | 32GB | Promox | Kubernetes Workers |
| Alienware X51  | 1   | 16GB | Ubuntu | Kubernetes Workers |
| Raspberry Pi 4 | 4   | 8GB | Ubuntu | Kubernetes Workers |
| Synology 1513+ | 1   | 8GB | Ubuntu | NAS |
| Firewalla Gold | 1   | - | Ubuntu | Router |
| Zyxel GS1900-24E Switch | 1   | -   | -   | Network Switch |
| APC SMT1500C | 1   | -   | -   | UPS |

---

Thanks goes out to [onedr0p](https://github.com/onedr0p) and his awesome [flux template](https://github.com/onedr0p)
