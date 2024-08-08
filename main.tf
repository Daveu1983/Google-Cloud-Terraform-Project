resource "google_compute_network" "vpc_network" {
  name                    = "gke-network-environment1-network1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "gke_subnet" {
  name          = "environment1-subnet1"
  ip_cidr_range = var.environment1-subnet1
  network       = google_compute_network.vpc_network.name
  region        = var.region

  secondary_ip_range {
    range_name    = "pods-environment1"
    ip_cidr_range = var.pods-environment1
  }

  secondary_ip_range {
    range_name    = "services-environment1"
    ip_cidr_range = var.service-environment1
  }
}
