resource "google_container_cluster" "gke" {
  name     = "multi-cloud-gke"
  location = var.gcp_region
  initial_node_count = 1

  # Enable containerd as the container runtime
  remove_default_node_pool = true

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  cluster     = google_container_cluster.gke.name
  location   = google_container_cluster.gke.location

  node_config {
    machine_type = "e2-medium" # Adjust this according to your requirements
    disk_size_gb = 50           # Disk size per node

    # Use containerd-based node image (replace with specific image if needed)
    image_type = "COS_CONTAINERD"
  }

  initial_node_count = 1
}