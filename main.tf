resource "google_compute_disk" "disk" {

  name                      = var.name
  type                      = var.type
  zone                      = var.zone
  image                     = var.image != "" ? var.image : null
  physical_block_size_bytes = var.physical_block_size_bytes != 0 ? var.physical_block_size_bytes : null
  description               = var.description
  size                      = var.size
  provisioned_iops          = var.provisioned_iops != 0 ? var.provisioned_iops : null
  snapshot                  = var.snapshot != "" ? var.snapshot : null
  project                   = var.project

  dynamic "disk_encryption_key" {
    for_each = var.kms_key_self_link != null ? [1] : []
    content {
      kms_key_self_link = var.kms_key_self_link
    }
  }

  lifecycle {
    ignore_changes = [labels]
  }
}

resource "google_compute_attached_disk" "default" {
  count    = var.instance != null ? 1 : 0
  disk     = google_compute_disk.disk.id
  instance = var.instance
  project  = var.project
  zone     = var.zone
  depends_on = [
    google_compute_disk.disk
  ]
}
