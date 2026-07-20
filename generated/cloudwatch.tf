import {
  to = module.aws_cloudwatch_log_group.aws_cloudwatch_log_group.this
  id = "/codebuild/tos-ms-images"
}

module "aws_cloudwatch_log_group" {
  source = "./modules/aws_cloudwatch_log_group"
  name   = "/codebuild/tos-ms-images"
  tags = {
    Project = "tos"
    Stack   = "microservices"
  }
}

