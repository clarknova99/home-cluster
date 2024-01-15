<div align="center">

<img src="https://camo.githubusercontent.com/eec89a711423634860ccdce3337ba8f922c424d921650684c69fc12d051e2a39/68747470733a2f2f692e696d6775722e636f6d2f676476426b4e452e706e67" align="center" width="144px" height="144px"/>
</div>

<br/>

<div align="center">

[![k3s](https://img.shields.io/badge/k3s-v1.28-brightgreen?logo=kubernetes&logoColor=white)](https://k3s.io/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?logo=renovatebot&logoColor=white)](https://github.com/renovatebot/renovate)
[![repo size](https://img.shields.io/github/repo-size/clarknova99/home-cluster)](https://github.com/clarknova99/home-cluster)
[![Age-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.bigwang.org%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_age_days&style=flat-square&label=Age)](https://github.com/kashalls/kromgo/)&nbsp;
[![Node-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.bigwang.org%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_node_count&style=flat-square&label=Nodes)](https://github.com/kashalls/kromgo/)&nbsp;
[![Pod-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.bigwang.org%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_pod_count&style=flat-square&label=Pods)](https://github.com/kashalls/kromgo/)&nbsp;
[![CPU-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.bigwang.org%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_cpu_usage&style=flat-square&label=CPU)](https://github.com/kashalls/kromgo/)&nbsp;
[![Memory-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.bigwang.org%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_memory_usage&style=flat-square&label=Memory)](https://github.com/kashalls/kromgo/)&nbsp;

</div>

---

## :book:&nbsp; Overview

The repo is home for the code to automate the provisioning and management of my Kubernetes cluster.
* [ansible](https://www.ansible.com) for provisioning & bootstrapping debian servers with [K3s](https://k3s.io).
* [flux](https://toolkit.fluxcd.io)  watches this git repo and applies changes to Kubernetes when they are pushed to the repo.
* [flux schemas](https://github.com/fluxcd-community/flux2-schemas/) flux schemas used for yaml validation
* [renovate](https://github.com/renovatebot/renovate) monitors the repo, creating pull requests when it finds updates to dependencies.

## :gear: Core Components
* [cilium](https://cilium.io/) for networking within the cluster and load balancer for exposed services
* [cert-manager](https://cert-manager.io) to request SSL certificates to store as Kubernetes resources
* [sops](https://github.com/mozilla/sops) with [age](https://github.com/FiloSottile/age) to encrypt secrets used in Ansible & Flux
* [ingress-nginx](https://github.com/kubernetes/ingress-nginx): Kubernetes ingress controller used for HTTP reverse proxy of service ingresses
* [longhorn](https://longhorn.io/): Replicated, persisted storage
* [minio](https://min.io/): Object Storage for PVC & Database backups



## 🔧 Hardware
| Device | Count | Ram | Operating System | Purpose |
| --- | --- | --- | --- | --- |
| Intel NUC11PAHi7 | 1   | 64GB | debian | Kubernetes Masters |
| Intel NUC8i5BEH | 1   | 32GB | debian | Kubernetes Workers |
| Alienware Aurora | 1   | 24GB | debian | Kubernetes Workers |
| Alienware X51  | 1   | 16GB | debian | Kubernetes Workers |
| Raspberry Pi 4 | 4   | 8GB | debian | Kubernetes Workers |
| Synology 1513+ | 1   | 8GB | - | NAS |
| Firewalla Gold | 1   | - | Ubuntu | Router |
| Zyxel GS1900-24E Switch | 1   | -   | -   | Network Switch |
| APC SMT1500C | 1   | -   | -   | UPS |

---

Thanks goes out to [onedr0p](https://github.com/onedr0p) and his awesome [flux template](https://github.com/onedr0p)
