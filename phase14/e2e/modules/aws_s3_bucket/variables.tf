variable "name" {
  description = "Name of the S3 bucket (the \"bucket\" argument). Defaults to the adopted live value."
  type        = string
  default     = "config-bucket-346589946607"
}

variable "server_side_encryption" {
  description = "Default server-side encryption rule for the bucket. null leaves it unmanaged."
  type = object({
    sse_algorithm      = string
    bucket_key_enabled = optional(bool, false)
  })
  default = {
    bucket_key_enabled = false
    sse_algorithm      = "AES256"
  }
}

variable "public_access_block" {
  description = "Public access block settings for the bucket. null leaves it unmanaged."
  type = object({
    block_public_acls       = bool
    block_public_policy     = bool
    ignore_public_acls      = bool
    restrict_public_buckets = bool
  })
  default = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
}

variable "policy_document" {
  description = "Bucket policy JSON to attach to the bucket. null attaches no policy."
  type        = string
  default     = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketPermissionsCheck\"},{\"Action\":\"s3:ListBucket\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketExistenceCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607/AWSLogs/346589946607/Config/*\",\"Sid\":\"AWSConfigBucketDelivery\"}],\"Version\":\"2012-10-17\"}"
}
