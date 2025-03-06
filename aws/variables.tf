variable "alert_email_address" {
  description = "The email address to receive notifications for cost anomalies."
  type        = string
}

variable "aws_account_id" {
  description = "The AWS account where the cost anomaly monitoring resources will be created."
  type        = string
}

variable "aws_region" {
  description = "The AWS region where the cost anomaly monitoring resources will be created."
  type        = string
  default     = "us-west-2"
}
