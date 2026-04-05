terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "ai-platform-lab/terraform.tfstate"

    endpoints = {
      s3 = "http://192.168.30.100:9000"
    }

    access_key = var.minio_access_key
    secret_key = var.minio_secret_key

    region                      = "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check    = true
    skip_region_validation      = true
    force_path_style            = true
 }
}
