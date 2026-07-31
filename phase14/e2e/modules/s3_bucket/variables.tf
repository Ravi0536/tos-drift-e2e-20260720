variable "name" {
  description = "Name of the S3 bucket (the \"bucket\" argument). Defaults to the adopted live value."
  type        = string
  default     = "tos-dev-artifacts-346589946607"
}

variable "tags" {
  description = "Tags to apply to the S3 bucket. Defaults to the adopted live tags."
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
  description = "Whether to enable object versioning on the bucket."
  type        = bool
  default     = true
}

variable "server_side_encryption" {
  description = "Default server-side encryption configuration for the bucket. Set to null to leave unmanaged."
  type = object({
    sse_algorithm      = string
    bucket_key_enabled = optional(bool, false)
  })
  default = {
    sse_algorithm      = "AES256"
    bucket_key_enabled = false
  }
}

variable "public_access_block" {
  description = "Public access block settings for the bucket. Set to null to leave unmanaged."
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
