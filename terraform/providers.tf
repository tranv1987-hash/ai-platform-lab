terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.73"
    }
  }

  required_version = ">= 1.5.0"
}

provider "proxmox" {
  alias     = "pve01"
  endpoint  = var.proxmox_endpoint_pve01
  api_token = var.proxmox_api_token_pve01
  insecure  = true
}

provider "proxmox" {
  alias     = "pve02"
  endpoint  = var.proxmox_endpoint_pve02
  api_token = var.proxmox_api_token_pve02
  insecure  = true
}

provider "proxmox" {
  alias     = "pve03"
  endpoint  = var.proxmox_endpoint_pve03
  api_token = var.proxmox_api_token_pve03
  insecure  = true
}
