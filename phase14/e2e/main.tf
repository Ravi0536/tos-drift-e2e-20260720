import {
  to = module.artifacts_bucket.aws_s3_bucket.this
  id = "tos-dev-artifacts-346589946607"
}

import {
  to = module.artifacts_bucket.aws_s3_bucket_versioning.this[0]
  id = "tos-dev-artifacts-346589946607"
}

import {
  to = module.artifacts_bucket.aws_s3_bucket_server_side_encryption_configuration.this[0]
  id = "tos-dev-artifacts-346589946607"
}

import {
  to = module.artifacts_bucket.aws_s3_bucket_public_access_block.this[0]
  id = "tos-dev-artifacts-346589946607"
}

import {
  to = module.artifacts_bucket.aws_s3_bucket_lifecycle_configuration.this
  id = "tos-dev-artifacts-346589946607"
}

import {
  to = module.artifacts_bucket.aws_s3_bucket_ownership_controls.this
  id = "tos-dev-artifacts-346589946607"
}

module "artifacts_bucket" {
  source = "./modules/s3_bucket"

  name = "tos-dev-artifacts-346589946607"

  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }

  versioning_enabled = true

  server_side_encryption = {
    sse_algorithm      = "AES256"
    bucket_key_enabled = false
  }

  public_access_block = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
}
