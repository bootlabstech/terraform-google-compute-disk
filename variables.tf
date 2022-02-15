#REQUIRED VARIABLES

variable "name" {
    description = "Name of the disk"
    type        =  string
}

variable "zone" {
    type        = string
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "us-east1-b",
        "us-east1-c",
        "us-east1-d",
        "us-east4-c",
        "us-east4-b",
        "us-east4-a",
        "us-central1-c",
        "us-central1-a",
        "us-central1-f",
        "us-central1-b",
        "us-west1-b",
        "us-west1-c",
        "us-west1-a",
        "europe-west4-a",
        "europe-west4-b",
        "europe-west4-c",
        "europe-west1-b",
        "europe-west1-d",
        "europe-west1-c",
        "europe-west3-c",
        "europe-west3-a",
        "europe-west3-b",
        "europe-west2-c",
        "europe-west2-b",
        "europe-west2-a",
        "asia-east1-b",
        "asia-east1-a",
        "asia-east1-c",
        "asia-southeast1-b",
        "asia-southeast1-a",
        "asia-southeast1-c",
        "asia-northeast1-b",
        "asia-northeast1-c",
        "asia-northeast1-a",
        "asia-south1-c",
        "asia-south1-b",
        "asia-south1-a",
        "australia-southeast1-b",
        "australia-southeast1-c",
        "australia-southeast1-a",
        "southamerica-east1-b",
        "southamerica-east1-c",
        "southamerica-east1-a",
        "asia-east2-a",
        "asia-east2-b",
        "asia-east2-c",
        "asia-northeast2-a",
        "asia-northeast2-b",
        "asia-northeast2-c",
        "asia-northeast3-a",
        "asia-northeast3-b",
        "asia-northeast3-c",
        "asia-south2-a",
        "asia-south2-b",
        "asia-south2-c",
        "asia-southeast2-a",
        "asia-southeast2-b",
        "asia-southeast2-c",
        "australia-southeast2-a",
        "australia-southeast2-b",
        "australia-southeast2-c",
        "europe-central2-a",
        "europe-central2-b",
        "europe-central2-c",
        "europe-north1-a",
        "europe-north1-b",
        "europe-north1-c",
        "europe-west6-a",
        "europe-west6-b",
        "europe-west6-c",
        "northamerica-northeast1-a",
        "northamerica-northeast1-b",
        "northamerica-northeast1-c",
        "northamerica-northeast2-a",
        "northamerica-northeast2-b",
        "northamerica-northeast2-c",
        "southamerica-west1-a",
        "southamerica-west1-b",
        "southamerica-west1-c",
        "us-west2-a",
        "us-west2-b",
        "us-west2-c",
        "us-west3-a",
        "us-west3-b",
        "us-west3-c",
        "us-west4-a",
        "us-west4-b",
        "us-west4-c"
        ],
   "description": "this is the location where the vm will be created"
}
EOT
}
variable "type" {
    description = "URL of the disk type resource describing which disk type to use to create the disk"
    type        = string
}

variable "region" {
type        = string
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "asia-east1",
             "asia-east2",
             "asia-northeast1",
             "asia-northeast2",
            "asia-northeast3",
            "asia-south1",
            "asia-south2",
            "asia-southeast1",
            "asia-southeast2",
            "australia-southeast1",
            "australia-southeast2",
            "europe-central2",
            "europe-north1",
            "europe-west1",
            "europe-west2",
            "europe-west3",
            "europe-west4",
            "europe-west6",
            "northamerica-northeast1",
            "northamerica-northeast2",
            "southamerica-east1",
            "southamerica-west1",
            "us-central1",
            "us-east1",
            "us-east4",
            "us-west1",
            "us-west2",
            "us-west3",
            "us-west4"      
               ],
   "description": "The region the instance will be created at"
}
EOT
}

variable "size" {
    description = "Size of the persistent disk, specified in GB"
    type        = number
}

variable "project" {
    description = "The ID of the project in which the resource belongs"
    type        = string
}

variable "labels" {
    description = "Labels to apply to this disk"
    type        = map(string)

}

#OPTIONAL VARIABLES

variable "image" {
description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "centos-7-v20220126",
             "centos-stream-8-v20220128",
             "cos-85-13310-1416-5",
             "cos-89-16108-604-11",
             "cos-93-16623-102-12",
             "cos-beta-93-16623-39-6",
             "debian-10-buster-v20220118",
             "debian-11-bullseye-v20220120",
             "debian-9-stretch-v20220118",
             "fedora-cloud-base-gcp-33-1-2-x86-64",
             "fedora-cloud-base-gcp-34-1-2-x86-64",
             "fedora-cloud-base-gcp-35-1-2-x86-64",
             "opensuse-leap-15-2-v20200702",
             "opensuse-leap-15-3-v20220128",
             "rhel-7-v20220126",
             "rhel-8-v20220126",
             "rhel-7-6-sap-v20220126",
             "rhel-7-7-sap-v20220126",
             "rhel-7-9-sap-v20220126",
             "rhel-8-1-sap-v20220126",
             "rhel-8-2-sap-v20220126",
             "rhel-8-4-sap-v20220126",
             "rocky-linux-8-v20220126",
             "sles-12-sp5-v20220126",
             "sles-15-sp3-v20220126",
             "sles-12-sp3-sap-v20220201",
             "sles-12-sp4-sap-v20220201",
             "sles-12-sp5-sap-v20220126",
             "sles-15-sap-v20220126",
             "sles-15-sp1-sap-v20220126",
             "sles-15-sp2-sap-v20220126",
             "sles-15-sp3-sap-v20220126",
             "ubuntu-1804-bionic-v20220213",
             "ubuntu-pro-1604-xenial-v20211213",
             "ubuntu-pro-1804-bionic-v20220131",
             "ubuntu-pro-2004-focal-v20220204",
             "windows-server-2012-r2-dc-core-v20220210",
             "windows-server-2012-r2-dc-v20220210",
             "windows-server-2016-dc-core-v20220210",
             "sql-2012-enterprise-windows-2012-r2-dc-v20220210",
             "sql-2012-standard-windows-2012-r2-dc-v20220210",
             "sql-2012-web-windows-2012-r2-dc-v20220210",
             "sql-2014-enterprise-windows-2012-r2-dc-v20220210",
             "sql-204-enterprise-windows-2016-dc-v20220210",
             "sql-2014-standard-windows-2012-r2-dc-v20220210",
             "sql-2014-web-windows-2012-r2-dc-v20220210",
             "cos-dev-97-16882-0-0",
             "cos-stable-93-16623-102-12",
             "ubuntu-2004-focal-v20220204",
             "ubuntu-2110-impish-v20220204",
             "ubuntu-minimal-1804-bionic-v20220208",
             "ubuntu-minimal-2004-focal-v20220203",
             "ubuntu-minimal-2110-impish-v20220203",
             "windows-server-2016-dc-v20220210",
             "windows-server-2019-dc-core-for-containers-v20220211",
            "windows-server-2019-dc-core-v20220210",
            "windows-server-2019-dc-for-containers-v20220211",
            "windows-server-2019-dc-v20220210",
            "windows-server-20h2-dc-core-v20220210",
            "sql-2016-enterprise-windows-2012-r2-dc-v20220210",
            "sql-2016-enterprise-windows-2016-dc-v20220210",
            "sql-2016-enterprise-windows-2019-dc-v20220210",
            "sql-2016-standard-windows-2012-r2-dc-v20220210",
            "sql-2016-standard-windows-2016-dc-v20220210",
            "sql-2016-standard-windows-2019-dc-v20220210",
            "sql-2016-web-windows-2012-r2-dc-v20220210",
            "sql-2016-web-windows-2016-dc-v20220210",
            "sql-2016-web-windows-2019-dc-v20220210",
            "fedora-coreos-35-20220116-3-0-gcp-x86-64",
            "fedora-coreos-35-20220131-1-0-gcp-x86-64",
            "fedora-coreos-35-20220131-2-0-gcp-x86-64",
            "sql-2017-enterprise-windows-2016-dc-v20220210",
            "sql-2017-enterprise-windows-2019-dc-v20220210",
            "sql-2017-express-windows-2012-r2-dc-v20220210",
            "sql-2017-express-windows-2016-dc-v20220210",
            "sql-2017-express-windows-2019-dc-v20220210",
            "sql-2017-standard-windows-2016-dc-v20220210",
            "sql-2017-standard-windows-2019-dc-v20220210",
            "sql-2017-web-windows-2016-dc-v20220210",
            "sql-2017-web-windows-2019-dc-v20220210",
            "sql-2019-enterprise-windows-2019-dc-v20220210",
            "sql-2019-standard-windows-2019-dc-v20220210",
            "sql-2019-web-windows-2019-dc-v20220211"
        ],        
 "description": "this is the boot_disk_image with which the vm will be created"
}
EOT
}
  type        = string
}

variable "physical_block_size_bytes" {
    description = "Physical block size of the persistent disk, in bytes"
    type        = number
    default     = 0
}

variable "description" {
    description = "An optional description of this resource"
    type        = string
    default     = "This is a description for this resource"
}

variable "interface" {
     type        = string
    default     = "SCSI"
    description =  <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "SCSI",
             " NVME",
           ],
   "description": "Specifies the disk interface to use for attaching this disk"
}
EOT
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
 
