variable "proxmox_endpoint_pve01" {
  description = "URL of the Proxmox API on pve-01"
  type        = string
}

variable "proxmox_endpoint_pve02" {
  description = "URL of the Proxmox API on pve-02"
  type        = string
}

variable "proxmox_endpoint_pve03" {
  description = "URL of the Proxmox API on pve-03"
  type        = string
}

variable "proxmox_api_token_pve01" {
  description = "Proxmox API token for pve-01"
  type        = string
  sensitive   = true
}

variable "proxmox_api_token_pve02" {
  description = "Proxmox API token for pve-02"
  type        = string
  sensitive   = true
}

variable "proxmox_api_token_pve03" {
  description = "Proxmox API token for pve-03"
  type        = string
  sensitive   = true
}

variable "minio_access_key" {
  description = "MinIO access key for Terraform state backend"
  type        = string
  sensitive   = true
}

variable "minio_secret_key" {
  description = "MinIO secret key for Terraform state backend"
  type        = string
  sensitive   = true
}
