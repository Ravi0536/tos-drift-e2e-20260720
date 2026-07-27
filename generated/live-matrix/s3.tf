resource "aws_s3_bucket" "cf_templates_tiv18fhdp46w_us_east_1" {
  bucket = "cf-templates-tiv18fhdp46w-us-east-1"
  tags = {
    tos-drift-test = "1"
  }
}

import {
  to = aws_s3_bucket.cf_templates_tiv18fhdp46w_us_east_1
  id = "cf-templates-tiv18fhdp46w-us-east-1"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cf_templates_tiv18fhdp46w_us_east_1" {
  bucket = aws_s3_bucket.cf_templates_tiv18fhdp46w_us_east_1.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.cf_templates_tiv18fhdp46w_us_east_1
  id = "cf-templates-tiv18fhdp46w-us-east-1"
}

resource "aws_s3_bucket_public_access_block" "cf_templates_tiv18fhdp46w_us_east_1" {
  bucket                  = aws_s3_bucket.cf_templates_tiv18fhdp46w_us_east_1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.cf_templates_tiv18fhdp46w_us_east_1
  id = "cf-templates-tiv18fhdp46w-us-east-1"
}

resource "aws_s3_bucket_ownership_controls" "cf_templates_tiv18fhdp46w_us_east_1" {
  bucket = aws_s3_bucket.cf_templates_tiv18fhdp46w_us_east_1.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.cf_templates_tiv18fhdp46w_us_east_1
  id = "cf-templates-tiv18fhdp46w-us-east-1"
}

resource "aws_s3_bucket" "config_bucket_346589946607" {
  bucket = "config-bucket-346589946607"
}

import {
  to = aws_s3_bucket.config_bucket_346589946607
  id = "config-bucket-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "config_bucket_346589946607" {
  bucket = aws_s3_bucket.config_bucket_346589946607.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.config_bucket_346589946607
  id = "config-bucket-346589946607"
}

resource "aws_s3_bucket_public_access_block" "config_bucket_346589946607" {
  bucket                  = aws_s3_bucket.config_bucket_346589946607.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.config_bucket_346589946607
  id = "config-bucket-346589946607"
}

resource "aws_s3_bucket_policy" "config_bucket_346589946607" {
  bucket = aws_s3_bucket.config_bucket_346589946607.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketPermissionsCheck\"},{\"Action\":\"s3:ListBucket\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607\",\"Sid\":\"AWSConfigBucketExistenceCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"346589946607\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-346589946607/AWSLogs/346589946607/Config/*\",\"Sid\":\"AWSConfigBucketDelivery\"}],\"Version\":\"2012-10-17\"}"
}

import {
  to = aws_s3_bucket_policy.config_bucket_346589946607
  id = "config-bucket-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "config_bucket_346589946607" {
  bucket = aws_s3_bucket.config_bucket_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.config_bucket_346589946607
  id = "config-bucket-346589946607"
}

resource "aws_s3_bucket" "tos_dev_artifacts_346589946607" {
  bucket = "tos-dev-artifacts-346589946607"
  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

import {
  to = aws_s3_bucket.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket_versioning" "tos_dev_artifacts_346589946607" {
  bucket = aws_s3_bucket.tos_dev_artifacts_346589946607.id
  versioning_configuration {
    status = "Enabled"
  }
}

import {
  to = aws_s3_bucket_versioning.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_dev_artifacts_346589946607" {
  bucket = aws_s3_bucket.tos_dev_artifacts_346589946607.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket_public_access_block" "tos_dev_artifacts_346589946607" {
  bucket                  = aws_s3_bucket.tos_dev_artifacts_346589946607.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket_lifecycle_configuration" "tos_dev_artifacts_346589946607" {
  bucket = aws_s3_bucket.tos_dev_artifacts_346589946607.id
  rule {
    id     = "expire-build-sources"
    status = "Enabled"
    filter {
      prefix = "codebuild/source/"
    }
    expiration {
      days = 30
    }
    noncurrent_version_expiration {
      noncurrent_days = 7
    }
  }
  rule {
    id     = "retain-release-evidence"
    status = "Enabled"
    filter {
      prefix = "supply-chain/"
    }
    expiration {
      days = 400
    }
    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }
  rule {
    id     = "expire-workspace-artifact-versions"
    status = "Enabled"
    filter {
      prefix = "artifacts/"
    }
    expiration {
      expired_object_delete_marker = true
    }
    noncurrent_version_expiration {
      noncurrent_days = 35
    }
  }
  rule {
    id     = "abort-incomplete-uploads"
    status = "Enabled"
    filter {
    }
    abort_incomplete_multipart_upload {
      days_after_initiation = 7
    }
  }
}

import {
  to = aws_s3_bucket_lifecycle_configuration.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "tos_dev_artifacts_346589946607" {
  bucket = aws_s3_bucket.tos_dev_artifacts_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_dev_artifacts_346589946607
  id = "tos-dev-artifacts-346589946607"
}

resource "aws_s3_bucket" "tos_dev_cloudtrail_346589946607" {
  bucket = "tos-dev-cloudtrail-346589946607"
  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

import {
  to = aws_s3_bucket.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_dev_cloudtrail_346589946607" {
  bucket = aws_s3_bucket.tos_dev_cloudtrail_346589946607.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket_public_access_block" "tos_dev_cloudtrail_346589946607" {
  bucket                  = aws_s3_bucket.tos_dev_cloudtrail_346589946607.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket_policy" "tos_dev_cloudtrail_346589946607" {
  bucket = aws_s3_bucket.tos_dev_cloudtrail_346589946607.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"aws:SourceArn\":\"arn:aws:cloudtrail:us-east-1:346589946607:trail/tos-dev-events\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::tos-dev-cloudtrail-346589946607\",\"Sid\":\"AWSCloudTrailAclCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"aws:SourceArn\":\"arn:aws:cloudtrail:us-east-1:346589946607:trail/tos-dev-events\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::tos-dev-cloudtrail-346589946607/AWSLogs/346589946607/*\",\"Sid\":\"AWSCloudTrailWrite\"}],\"Version\":\"2012-10-17\"}"
}

import {
  to = aws_s3_bucket_policy.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket_lifecycle_configuration" "tos_dev_cloudtrail_346589946607" {
  bucket = aws_s3_bucket.tos_dev_cloudtrail_346589946607.id
  rule {
    id     = "expire-trail-logs"
    status = "Enabled"
    filter {
    }
    expiration {
      days = 3
    }
  }
}

import {
  to = aws_s3_bucket_lifecycle_configuration.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "tos_dev_cloudtrail_346589946607" {
  bucket = aws_s3_bucket.tos_dev_cloudtrail_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_dev_cloudtrail_346589946607
  id = "tos-dev-cloudtrail-346589946607"
}

resource "aws_s3_bucket" "tos_dev_spa_346589946607" {
  bucket = "tos-dev-spa-346589946607"
  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

import {
  to = aws_s3_bucket.tos_dev_spa_346589946607
  id = "tos-dev-spa-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_dev_spa_346589946607" {
  bucket = aws_s3_bucket.tos_dev_spa_346589946607.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_dev_spa_346589946607
  id = "tos-dev-spa-346589946607"
}

resource "aws_s3_bucket_public_access_block" "tos_dev_spa_346589946607" {
  bucket                  = aws_s3_bucket.tos_dev_spa_346589946607.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.tos_dev_spa_346589946607
  id = "tos-dev-spa-346589946607"
}

resource "aws_s3_bucket_policy" "tos_dev_spa_346589946607" {
  bucket = aws_s3_bucket.tos_dev_spa_346589946607.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceArn\":\"arn:aws:cloudfront::346589946607:distribution/E39MQ62UAS777U\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudfront.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::tos-dev-spa-346589946607/*\",\"Sid\":\"AllowCloudFrontRead\"}],\"Version\":\"2012-10-17\"}"
}

import {
  to = aws_s3_bucket_policy.tos_dev_spa_346589946607
  id = "tos-dev-spa-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "tos_dev_spa_346589946607" {
  bucket = aws_s3_bucket.tos_dev_spa_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_dev_spa_346589946607
  id = "tos-dev-spa-346589946607"
}

resource "aws_s3_bucket" "tos_dev_tf_state_346589946607" {
  bucket = "tos-dev-tf-state-346589946607"
  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

import {
  to = aws_s3_bucket.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket_versioning" "tos_dev_tf_state_346589946607" {
  bucket = aws_s3_bucket.tos_dev_tf_state_346589946607.id
  versioning_configuration {
    status = "Enabled"
  }
}

import {
  to = aws_s3_bucket_versioning.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_dev_tf_state_346589946607" {
  bucket = aws_s3_bucket.tos_dev_tf_state_346589946607.id
  rule {
    bucket_key_enabled = true
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket_public_access_block" "tos_dev_tf_state_346589946607" {
  bucket                  = aws_s3_bucket.tos_dev_tf_state_346589946607.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket_policy" "tos_dev_tf_state_346589946607" {
  bucket = aws_s3_bucket.tos_dev_tf_state_346589946607.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::tos-dev-tf-state-346589946607\",\"arn:aws:s3:::tos-dev-tf-state-346589946607/*\"],\"Sid\":\"DenyInsecureTransport\"}],\"Version\":\"2012-10-17\"}"
}

import {
  to = aws_s3_bucket_policy.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "tos_dev_tf_state_346589946607" {
  bucket = aws_s3_bucket.tos_dev_tf_state_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_dev_tf_state_346589946607
  id = "tos-dev-tf-state-346589946607"
}

resource "aws_s3_bucket" "tos_ms_outputs_346589946607" {
  bucket = "tos-ms-outputs-346589946607"
  tags = {
    Project = "tos"
    Stack   = "microservices"
  }
}

import {
  to = aws_s3_bucket.tos_ms_outputs_346589946607
  id = "tos-ms-outputs-346589946607"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_ms_outputs_346589946607" {
  bucket = aws_s3_bucket.tos_ms_outputs_346589946607.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_ms_outputs_346589946607
  id = "tos-ms-outputs-346589946607"
}

resource "aws_s3_bucket_ownership_controls" "tos_ms_outputs_346589946607" {
  bucket = aws_s3_bucket.tos_ms_outputs_346589946607.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_ms_outputs_346589946607
  id = "tos-ms-outputs-346589946607"
}

resource "aws_s3_bucket" "tos_terraform_state" {
  bucket = "tos-terraform-state"
}

import {
  to = aws_s3_bucket.tos_terraform_state
  id = "tos-terraform-state"
}

resource "aws_s3_bucket_versioning" "tos_terraform_state" {
  bucket = aws_s3_bucket.tos_terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

import {
  to = aws_s3_bucket_versioning.tos_terraform_state
  id = "tos-terraform-state"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tos_terraform_state" {
  bucket = aws_s3_bucket.tos_terraform_state.id
  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

import {
  to = aws_s3_bucket_server_side_encryption_configuration.tos_terraform_state
  id = "tos-terraform-state"
}

resource "aws_s3_bucket_public_access_block" "tos_terraform_state" {
  bucket                  = aws_s3_bucket.tos_terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

import {
  to = aws_s3_bucket_public_access_block.tos_terraform_state
  id = "tos-terraform-state"
}

resource "aws_s3_bucket_ownership_controls" "tos_terraform_state" {
  bucket = aws_s3_bucket.tos_terraform_state.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

import {
  to = aws_s3_bucket_ownership_controls.tos_terraform_state
  id = "tos-terraform-state"
}

