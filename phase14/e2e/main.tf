import {
  to = module.config_bucket.aws_s3_bucket.this
  id = "config-bucket-346589946607"
}

import {
  to = module.config_bucket.aws_s3_bucket_server_side_encryption_configuration.this[0]
  id = "config-bucket-346589946607"
}

import {
  to = module.config_bucket.aws_s3_bucket_public_access_block.this[0]
  id = "config-bucket-346589946607"
}

import {
  to = module.config_bucket.aws_s3_bucket_policy.this[0]
  id = "config-bucket-346589946607"
}

import {
  to = module.config_bucket.aws_s3_bucket_ownership_controls.this
  id = "config-bucket-346589946607"
}

module "config_bucket" {
  source = "./modules/aws_s3_bucket"

  name = "config-bucket-346589946607"

  server_side_encryption = {
    bucket_key_enabled = false
    sse_algorithm      = "AES256"
  }

  public_access_block = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }

  policy_document = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketPermissionsCheck\"},{\"Action\":\"s3:ListBucket\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketExistenceCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607/AWSLogs/346589946607/Config/*\",\"Sid\":\"AWSConfigBucketDelivery\"}],\"Version\":\"2012-10-17\"}"
}
