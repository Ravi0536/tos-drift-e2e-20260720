resource "aws_s3_bucket" "this" {
  bucket = var.name
  tags   = var.tags
}

resource "aws_s3_bucket_versioning" "this" {
  count = var.versioning_enabled ? 1 : 0

  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  count = var.server_side_encryption != null ? 1 : 0

  bucket = aws_s3_bucket.this.id

  rule {
    bucket_key_enabled = var.server_side_encryption.bucket_key_enabled

    apply_server_side_encryption_by_default {
      sse_algorithm = var.server_side_encryption.sse_algorithm
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  count = var.public_access_block != null ? 1 : 0

  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = var.public_access_block.block_public_acls
  block_public_policy     = var.public_access_block.block_public_policy
  ignore_public_acls      = var.public_access_block.ignore_public_acls
  restrict_public_buckets = var.public_access_block.restrict_public_buckets
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  bucket = aws_s3_bucket.this.id

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

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
