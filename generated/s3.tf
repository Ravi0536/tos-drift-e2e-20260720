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
    bucket_key_enabled = true
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

