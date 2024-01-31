terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "nifty-motif-412910"
  region  = "ASIA-SOUTHEAST1"
}



resource "google_storage_bucket" "data-lake-bucket" {
  name     = "nifty-motif-412910-de-zoomcamp-bucket"
  location = "ASIA-SOUTHEAST1"

  # Optional, but recommended settings:
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30 // days
    }
  }

  force_destroy = true
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id = "de_zoomcamp_dataset"
  project    = "nifty-motif-412910"
  location   = "ASIA-SOUTHEAST1"
}