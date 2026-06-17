#REQUIRED VARIABLES

variable "name" {
  description = "Name of the disk"
  type        = string
}

variable "zone" {
  description = "A reference to the zone where the disk resides"
  type        = string
}

variable "type" {
  description = "URL of the disk type resource describing which disk type to use to create the disk"
  type        = string
}

variable "region" {
  description = "The available regions for the instance"
  type        = string
}

variable "size" {
  description = "Size of the persistent disk, specified in GB"
  type        = number
}

variable "project" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

# variable "disk" {
#     description = "Labels to apply to this disk"
#     type        = string

# }

#OPTIONAL VARIABLES

variable "image" {
  description = "The image from which to initialize this disk"
  type        = string
  default     = ""
}


variable "physical_block_size_bytes" {
  description = "Physical block size of the persistent disk, in bytes"
  type        = number
}

variable "description" {
  description = "An optional description of this resource"
  type        = string
  default     = null
}

variable "interface" {
  description = "Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME"
  type        = string
  default     = "SCSI"
}

variable "provisioned_iops" {
  description = "Indicates how many IOPS must be provisioned for the disk"
  type        = number
  default     = 0
}

variable "snapshot" {
  description = "The source snapshot used to create this disk"
  type        = string
  default     = ""
}
variable "kms_key_self_link" {
  description = "Self-link of a Cloud KMS key to encrypt this disk. When null (default), disk is not CMEK-encrypted."
  type        = string
  default     = null
}

variable "instance" {
  description = "Self-link of the Compute Engine instance to attach this disk to. When null (default), no attachment resource is created."
  type        = string
  default     = null
}
 