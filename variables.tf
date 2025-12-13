variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "zone" {
  description = "The GCP zone"
  type        = string
}

variable "environment1-subnet1" {
  description = "Subnetcidr range for environment 1"
  type        = string
}

variable "pods-environment1" {
  description = "Pods cidr range for environment 1"
  type        = string
}

variable "service-environment1" {
  description = "Service cidr range for environment 1"
  type        = string
}

variable "gke_num_nodes" {
  description = "Number of GKE nodes"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "GKE node machine type"
  type        = string
  default     = "e2-medium"
}

variable "gcp_service_account_name" {
  description = "The name of the GCP service account"
  type        = string
  default     = "service-account-1"
}

variable "kubernetes_service_account_name" {
  description = "The name of the Kubernetes service account"
  type        = string
  default     = "service-account-1"
}

variable "kubernetes_namespace" {
  description = "The Kubernetes namespace"
  type        = string
  default     = "service-account-1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
  default     = "service-account-1-bucket"
}
