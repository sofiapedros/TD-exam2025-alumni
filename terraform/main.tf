resource "google_container_cluster" "primary" {
  name     = 
  location = 

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection = false

  network    = "default"
  subnetwork = "default"
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.gcp-cluster-name}-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = 
  node_count = 

  node_config {
    machine_type = 
    disk_size_gb = "20"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

resource "google_storage_bucket" "td_bucket" {
  name     = 
  location = 
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

