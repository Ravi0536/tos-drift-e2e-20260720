terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "tos-dev-tf-state-346589946607"
    key          = "phase14/e2e/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = "test"
      ManagedBy   = "Terraform"
      Project     = "tos-phase14-e2e"
      Purpose     = "disposable-phase14-e2e"
    }
  }
}

resource "aws_s3_bucket" "validation" {
  bucket = "tos-phase14-e2e-346589946607-20260728"
}

resource "aws_s3_bucket_ownership_controls" "validation" {
  bucket = aws_s3_bucket.validation.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "validation" {
  bucket = aws_s3_bucket.validation.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "validation" {
  bucket = aws_s3_bucket.validation.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

output "validation_bucket_name" {
  description = "Name of the disposable Phase 14 validation bucket."
  value       = aws_s3_bucket.validation.bucket
}
