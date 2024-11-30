variable "aws_region" {
  description = "The AWS project ID where AWS will be created."
  type        = string
}

variable "gcp_project_id" {
  description = "The GCP project ID where GKE will be created."
  type        = string
}

variable "gcp_region" {
  description = "The GCP region where resources will be created."
  type        = string
  default     = "us-central1"
}
