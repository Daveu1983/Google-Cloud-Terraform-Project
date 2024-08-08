terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Use the latest stable version
    }
  }

  required_version = ">= 1.0.0"
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}