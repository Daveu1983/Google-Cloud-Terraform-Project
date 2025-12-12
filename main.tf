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

resource "google_container_cluster" "gke_cluster" {
  name     = "gke-cluster-environment1"
  network  = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.gke_subnet.name
  initial_node_count = var.gke_num_nodes
  remove_default_node_pool = true
  location = var.zone

  }


resource "google_container_node_pool" "gke_node_pool" {
  name       = "gke-nodepool-environment1"
  cluster    = google_container_cluster.gke_cluster.name
  node_count = var.gke_num_nodes
  location   = var.zone

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
