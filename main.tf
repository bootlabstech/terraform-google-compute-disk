resource "google_compute_disk" "disk" {
  name                      = var.name
  type                      = var.type
  zone                      = var.zone
  image                     = var.image
  physical_block_size_bytes = var.physical_block_size_bytes
  description               = var.description
  size                      = var.size
  provisioned_iops          = var.provisioned_iops
  snapshot                  = var.snapshot
  project                   = var.project_id
  disk_encryption_key {
    kms_key_self_link = var.kms_key_self_link
  }
  lifecycle {
    ignore_changes = [labels]
  }
  

}
resource "google_compute_resource_policy" "policy" {
  project = var.project_id
  name   = var.policy_name
  region = var.region
  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = 1
        start_time    = "00:00"
      }
    }
    retention_policy {
      max_retention_days    = var.max_retention_days
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }
  }
}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.disk.id
  instance = var.instance
  project  = var.project_id
  zone     = var.zone
  depends_on = [
    google_compute_disk.disk
  ]
  
} 

resource "google_compute_disk_resource_policy_attachment" "attachment" {
  project=var.project_id
  name = google_compute_resource_policy.policy.name
  disk = google_compute_disk.disk.name
  zone = "asia-south1-a"
}

