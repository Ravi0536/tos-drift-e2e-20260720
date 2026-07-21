resource "aws_sqs_queue" "tos_dev_events_dlq" {
  name                      = "tos-dev-events-dlq"
  message_retention_seconds = 1209600
  tags = {
    cost-center = "tos-dev"
    env         = "dev"
    managed-by  = "terraform"
    owner       = "ravindra.kande@gmail.com"
    service     = "tos"
  }
}

import {
  to = aws_sqs_queue.tos_dev_events_dlq
  id = "https://sqs.us-east-1.amazonaws.com/346589946607/tos-dev-events-dlq"
}

