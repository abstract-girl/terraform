output "bucket_id" {
  description = "The ID of the bucket"
  value       = yandex_storage_bucket.bucket1.id
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = yandex_storage_bucket.bucket1.bucket
}

output "bucket_domain_name" {
  description = "The domain name of the bucket"
  value       = yandex_storage_bucket.bucket1.bucket_domain_name
} 