# 1. Create the Service Account
resource "google_service_account" "compute_viewer_sa" {
  account_id   = var.sa_name
  display_name = var.sa_name
  project      = var.project_id
}

# 2. Assign the Compute Viewer role to the Service Account
resource "google_project_iam_member" "sa_compute_viewer" {
  project = var.project_id
  role    = "roles/compute.viewer"
  member  = "serviceAccount:${google_service_account.compute_viewer_sa.email}"
}
