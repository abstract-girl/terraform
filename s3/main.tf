terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.100.0"
    }
  }
}

provider "yandex" {
  # YC_TOKEN, YC_CLOUD_ID, YC_FOLDER_ID
  zone = "ru-central1-a"
}

resource "yandex_storage_bucket" "bucket1" {
  bucket = var.bucket_name
  acl    = var.acl
} 