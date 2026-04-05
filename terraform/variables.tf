variable "proxmox_endpoint" {
  description = "URL of the Proxmox API"
  type        = string
}

variable "proxmox_api_token" {
  description = "Proxmox API token in format user@realm!tokenid=secret"
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
