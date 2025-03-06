variable "alert_email_address" {
  description = "The email address to receive notifications for cost anomalies."
  type        = string
}

variable "sns_topic_name" {
  description = "The name of the SNS topic for cost anomaly notifications."
  type        = string
  default     = "cost-anomaly-notifications"
}

variable "threshold" {
  description = "The threshold for cost anomaly detection in USD."
  type        = number
  default     = 100
}

variable "raise_amount_percent" {
  type        = string
  description = "An expression object used to specify the anomalies that you want to generate alerts for. The percentage service cost increase than the expected"
}

variable "raise_amount_absolute" {
  type        = string
  description = "The absolute increase in USD to trigger the detector. (ANOMALY_TOTAL_IMPACT_ABSOLUTE)"
}
