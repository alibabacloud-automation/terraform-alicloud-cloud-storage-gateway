#################
# Storage Bundle
#################
variable "storage_bundle_name" {
  description = "(Required) The name of storage bundle."
  type        = string
  default     = "tf-test-storage-bundle"
}

variable "bundle_description" {
  description = "The description of storage bundle."
  type        = string
  default     = "tf-test-storage-bundle"
}

#################
# Gateway
#################
variable "gateway_description" {
  description = "The description of gateway."
  type        = string
  default     = "tf-test-gateway"
}

variable "gateway_class" {
  description = "The gateway class. the valid values: Basic, Standard, Enhanced, Advanced."
  type        = string
  default     = "Standard"
}

variable "release_after_expiration" {
  description = "Whether to release the gateway due to expiration."
  type        = bool
  default     = false
}

variable "public_network_bandwidth" {
  description = "The public network bandwidth of gateway. Valid values between 5 and 200. Defaults to 5."
  type        = number
  default     = 40
}

variable "gateway_name" {
  description = "(Required) The name of gateway."
  type        = string
  default     = "tf-test-gateway"
}

#################
# Cache Disk
#################
variable "cache_disk_size_in_gb" {
  description = "(Required) size of the cache disk. Unit: GB. The upper limit of the basic gateway cache disk is 1 TB (1024 GB), that of the standard gateway is 2 TB (2048 GB), and that of other gateway cache disks is 32 TB (32768 GB). The lower limit for the file gateway cache disk capacity is 40 GB, and the lower limit for the block gateway cache disk capacity is 20 GB."
  type        = number
  default     = 50
}
