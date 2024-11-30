provider "google" {
  credentials = file("e:/Cloud/multi-cloud-saas/terraform-key.json")
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "kubernetes" {
  host                   = google_container_cluster.gke.endpoint
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.gke.master_auth[0].cluster_ca_certificate)
}
