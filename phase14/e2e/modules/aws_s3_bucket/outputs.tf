output "id" {
  description = "The ID of the aws_s3_bucket managed by this module."
  value       = aws_s3_bucket.this.id
}

output "arn" {
  description = "The ARN of the aws_s3_bucket managed by this module."
  value       = aws_s3_bucket.this.arn
}

output "name" {
  description = "The name of the aws_s3_bucket managed by this module."
  value       = var.name
}

