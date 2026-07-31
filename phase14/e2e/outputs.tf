output "artifacts_bucket_id" {
  description = "ID of the artifacts S3 bucket"
  value       = module.artifacts_bucket.id
}

output "artifacts_bucket_arn" {
  description = "ARN of the artifacts S3 bucket"
  value       = module.artifacts_bucket.arn
}

output "artifacts_bucket_name" {
  description = "Name of the artifacts S3 bucket"
  value       = module.artifacts_bucket.name
}
