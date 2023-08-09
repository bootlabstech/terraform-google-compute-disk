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
  project                   = var.project
  disk_encryption_key {
    kms_key_self_link = var.kms_key_self_link
  }
  lifecycle {
    ignore_changes = [labels]
  }
}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.disk.id
  instance = var.instance
  project  = var.project
  zone     = var.zone
  depends_on = [
    google_compute_disk.disk
  ]
}     