variable "name" {
  description = "Name of the aws_cloudwatch_log_group this module manages (its \"name\" argument). Defaults to the adopted live value."
  type        = string
  default     = "/codebuild/tos-ms-images"
}

variable "tags" {
  description = "Tags applied to the aws_cloudwatch_log_group this module manages. Defaults to the adopted live tags."
  type        = map(string)
  default = {
    Project = "tos"
    Stack   = "microservices"
  }
}

