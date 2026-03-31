# CLUSTER STATE — ai-platform-lab

> **How to use this file:** Fetch this at the start of every new chat session.
> Update it immediately after each phase completes.

---

## Repo
- **GitHub:** https://github.com/tranv1987-hash/ai-platform-lab
- **Default branch:** main

---

## Infrastructure
| Node | Hardware | Role | Proxmox IP | Status |
|------|----------|------|------------|--------|
| pve-01 | HP EliteDesk 705 G4 | k3s server (control plane) | TBD | ⏳ Not started |
| pve-02 | HP EliteDesk 705 G4 | k3s agent | TBD | ⏳ Not started |
| pve-03 | HP EliteDesk 705 G4 | k3s agent | TBD | ⏳ Not started |

- **VLAN:** 30
- **Subnet:** 192.168.30.x
- **Workstation:** Acer Nitro V 15 (control machine)

---

## Terraform Backend
- [ ] Decision pending — local state vs MinIO on Proxmox (Phase 1.2)

---

## Chapter Progress

### Chapter 1 — Cluster Foundation
| Phase | Description | Status |
|-------|-------------|--------|
| 1.1 | GitHub repo + CLUSTER-STATE.md | ✅ Complete |
| 1.2 | Terraform backend decision | ⏳ Not started |
| 1.3 | Proxmox prep (API tokens, networking) | ⏳ Not started |
| 1.4 | Terraform — provision k3s VMs | ⏳ Not started |
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
<!-- Add anything worth remembering — IP decisions, naming choices, lessons learned -->
