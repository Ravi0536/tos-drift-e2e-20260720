output "id" {
  description = "The ID of the aws_cloudwatch_log_group managed by this module."
  value       = aws_cloudwatch_log_group.this.id
}

output "arn" {
  description = "The ARN of the aws_cloudwatch_log_group managed by this module."
  value       = aws_cloudwatch_log_group.this.arn
}

output "name" {
  description = "The name of the aws_cloudwatch_log_group managed by this module."
  value       = var.name
}

