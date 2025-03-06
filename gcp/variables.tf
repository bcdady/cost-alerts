
variable "alert_threshold" {
  description = "The threshold for cost anomaly alerts."
  type        = number
  default     = 100
}

variable "alert_email_address" {
  description = "Email address to receive cost anomaly notifications."
  type        = string
}

variable "billing_account_id" {
  description = "The GCP billing account ID to monitor."
  type        = string
}

variable "gcp_project_id" {
  description = "The GCP project ID where cost monitoring will be set up."
  type        = string
}

variable "gcp_region" {
  description = "The GCP Region where cost monitoring will be set up."
  type        = string
}
