provider "google" {
 credentials = file("sa.json")
 project     = var.project_id
 region      = "us-east1"
}
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
