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



