variable "name" {
  description = "Name of the aws_s3_bucket this module manages (its \"bucket\" argument). Defaults to the adopted live value."
  type        = string
  default     = "tos-dev-artifacts-346589946607"
}

variable "tags" {
  description = "Tags applied to the aws_s3_bucket this module manages. Defaults to the adopted live tags."
  type        = map(string)
  default = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

variable "versioning_enabled" {
  description = "Enable object versioning on the bucket managed by this module."
  type        = bool
  default     = true
}

variable "server_side_encryption" {
  description = "Default server-side encryption rule for the bucket managed by this module. null leaves it unmanaged."
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
  description = "Public access block settings for the bucket managed by this module. null leaves it unmanaged."
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

