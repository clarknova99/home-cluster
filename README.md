<div align="center">

<img src="https://camo.githubusercontent.com/5b298bf6b0596795602bd771c5bddbb963e83e0f/68747470733a2f2f692e696d6775722e636f6d2f7031527a586a512e706e67" align="center" width="144px" height="144px"/>

### My home Kubernetes cluster :sailboat:

_... managed with Flux and Renovate_ :robot:

</div>

<br/>

<div align="center">

[![k3s](https://img.shields.io/badge/k3s-v1.24-brightgreen?logo=kubernetes&logoColor=white)](https://k3s.io/)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?logo=renovatebot&logoColor=white)](https://github.com/renovatebot/renovate)
[![Lines of code](https://img.shields.io/tokei/lines/github/clarknova99/home-cluster?color=brightgreen&label=lines&logo=codefactor&logoColor=white)](https://github.com/clarknova99/home-cluster)


</div>

---

## :book:&nbsp; Overview

This is home to my personal Kubernetes cluster. [Flux](https://github.com/fluxcd/flux2) watches this Git repository and makes the changes to my cluster based on the manifests in the [Kubernetes](./Kubernetes/) directory. [Renovate](https://github.com/renovatebot/renovate) also watches this Git repository and creates pull requests when it finds updates to Docker images, Helm charts, and other dependencies.

Installation
My cluster is k3s provisioned over VM's running on [Proxmox](https://www.proxmox.com/) running on bare-metal Ubuntu servers.


## 🔧 Hardware
| Device | Count | Ram | Operating System | Purpose |
| --- | --- | --- | --- | --- |
| Intel NUC11PAHi7 | 1   | 64GB | Ubuntu | Kubernetes Masters |
| Intel NUC8i5BEH | 1   | 32GB | Ubuntu | Kubernetes Workers |
| Raspberry Pi 4 | 4   | 8GB | Ubuntu | Kubernetes Workers |
| Synology 1513+ | 1   | 8GB | Ubuntu | NAS |
| Firewalla Gold | 1   | - | Ubuntu | Router |
| Zyxel GS1900-24E Switch | 1   | -   | -   | Network Switch |
| APC SMT1500C | 1   | -   | -   | UPS |
