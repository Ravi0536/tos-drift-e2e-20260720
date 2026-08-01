output "bucket_id" {
  description = "ID of the AWS Config S3 bucket."
  value       = module.config_bucket.id
}

output "bucket_arn" {
  description = "ARN of the AWS Config S3 bucket."
  value       = module.config_bucket.arn
}

output "bucket_name" {
  description = "Name of the AWS Config S3 bucket."
  value       = module.config_bucket.name
}
