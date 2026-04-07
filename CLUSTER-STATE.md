# CLUSTER STATE — ai-platform-lab

> **How to use this file:** Fetch this at the start of every new chat session.
> Update it immediately after each phase completes.

---

## Repo
- **GitHub:** https://github.com/tranv1987-hash/ai-platform-lab
- **Default branch:** main

---

## Infrastructure
| Node | Hardware | Role | IP | Status |
|------|----------|------|----|--------|
| pve-01 | HP EliteDesk 705 G4 | k3s server (control plane) | 192.168.30.101 | ✅ Proxmox installed |
| pve-02 | HP EliteDesk 705 G4 | k3s agent | 192.168.30.102 | ✅ Proxmox installed |
| pve-03 | HP EliteDesk 705 G4 | k3s agent | 192.168.30.103 | ✅ Proxmox installed |
| minio  | LXC on pve-01 | Terraform remote state | 192.168.30.100 | ✅ Running |
| k3s-server | Ubuntu 22.04 VM on pve-01 | k3s control plane | 192.168.30.111 | ✅ Running |
| k3s-agent-1 | Ubuntu 22.04 VM on pve-02 | k3s agent | 192.168.30.112 | ✅ Running |
| k3s-agent-2 | Ubuntu 22.04 VM on pve-03 | k3s agent | 192.168.30.113 | ✅ Running |

- **VLAN:** 30
- **Subnet:** 192.168.30.0/24
- **Gateway:** 192.168.30.1
- **DNS:** 192.168.30.191 (Pi-hole)
- **Workstation:** Acer Nitro V 15 (control machine)

---

## Terraform Backend
- **Type:** S3-compatible (MinIO)
- **Endpoint:** http://192.168.30.100:9000
- **Bucket:** terraform-state
- **Key:** ai-platform-lab/terraform.tfstate

---

## Chapter Progress

### Chapter 1 — Cluster Foundation
| Phase | Description | Status |
|-------|-------------|--------|
| 1.1 | GitHub repo + CLUSTER-STATE.md | ✅ Complete |
| 1.2 | Terraform backend decision | ✅ Complete — MinIO LXC on pve-01 (192.168.30.100) |
| 1.3 | Proxmox prep (API tokens, networking) | ✅ Complete |
| 1.4 | Terraform — provision k3s VMs | ✅ Complete |
| 1.5 | Ansible — OS config + k3s install | ⏳ Not started |
| 1.6 | ArgoCD bootstrap | ⏳ Not started |

### Chapter 2 — Core Services
| Phase | Description | Status |
|-------|-------------|--------|
| 2.x | Vault + ESO, cert-manager, Traefik, Pi-hole DNS | ⏳ Not started |

### Chapter 3 — Monitoring
| Phase | Description | Status |
|-------|-------------|--------|
| 3.x | Prometheus + Grafana | ⏳ Not started |

### Chapter 4 — LLM Inference Gateway
| Phase | Description | Status |
|-------|-------------|--------|
| 4.x | Unified API gateway, rate limiting, cost tracking | ⏳ Not started |

### Chapter 5 — Model Serving
| Phase | Description | Status |
|-------|-------------|--------|
| 5.x | vLLM, autoscaling, Helm charts | ⏳ Not started |

### Chapter 6 — AI Cost Attribution Dashboard
| Phase | Description | Status |
|-------|-------------|--------|
| 6.x | Spend tracking, budget alerts, Grafana/React dashboard | ⏳ Not started |

---

## Notes
- MinIO API: http://192.168.30.100:9000
- MinIO Console: http://192.168.30.100:9001
- MinIO bucket for Terraform state: terraform-state
- MinIO credentials stored locally (not in repo)
- Proxmox API tokens created on all 3 nodes (root@pam!terraform) — secrets stored locally
- Terraform initialized successfully — backend connected to MinIO
- bpg/proxmox provider v0.100.0 installed
- Terraform working directory: ~/ai-platform-lab/terraform (WSL)
- Always run git pull before terraform commands
- Each Proxmox node has its own provider alias (proxmox.pve01/02/03) — required for non-clustered Proxmox
- terraform apply must be run from ~/ai-platform-lab/terraform in WSL
- backend.hcl and terraform.tfvars are local only — never committed to GitHub
- VM templates (ID 9000) exist on all 3 Proxmox nodes — Ubuntu 22.04 cloud image
- SSH key for VM access: ~/.ssh/ai-platform-lab (WSL)
