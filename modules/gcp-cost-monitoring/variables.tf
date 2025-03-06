
variable "alert_email_address" {
  description = "Email address to receive cost anomaly notifications."
  type        = string
}

variable "alert_threshold" {
  description = "The threshold for cost anomaly alerts."
  type        = number
  default     = 100
}

variable "billing_account_id" {
  description = "The GCP billing account ID where cost monitoring will be set up."
  type        = string
}
