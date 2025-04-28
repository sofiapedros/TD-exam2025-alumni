terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:/Users/sofia/Documents/imat/cuarto/tecnologias_para_la_digitalizacion/TD-exam2025-alumni/icai2025-456716-c48dfbba6ae6.json")

  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
}
