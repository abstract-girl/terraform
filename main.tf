terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.100.0"
    }
  }
  
  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket     = "bucket-tf-main"
    region     = "ru-central1-a"
    key        = "terraform.tfstate"
    
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
  }
}

provider "yandex" {
  # Token, cloud_id, and folder_id should be provided via environment variables:
  # YC_TOKEN, YC_CLOUD_ID, YC_FOLDER_ID
  zone = "ru-central1-a"
}

module "s3" {
   source      = "./s3"
   bucket_name = "my-abstract-yandex-cloud-bucket"
   acl         = "private"
   folder_id = var.yc_folder_id
}