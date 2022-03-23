#################
# Storage Bundle
#################
variable "create_storage_bundle" {
  description = "Controls if storage bundle should be created"
  type        = bool
  default     = false
}

variable "storage_bundle_id" {
  description = "The id of storage bundle."
  type        = string
  default     = ""
}

variable "storage_bundle_name" {
  description = "(Required) The name of storage bundle."
  type        = string
  default     = ""
}

variable "bundle_description" {
  description = "The description of storage bundle."
  type        = string
  default     = ""
}

#################
# Gateway
#################
variable "create_gateway" {
  description = "Controls if gateway should be created"
  type        = bool
  default     = false
}

variable "gateway_id" {
  description = "The id of gateway."
  type        = string
  default     = ""
}

variable "gateway_description" {
  description = "The description of gateway."
  type        = string
  default     = ""
}

variable "gateway_class" {
  description = "The gateway class. the valid values: Basic, Standard,Enhanced,Advanced."
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Standard", "Enhanced", "Advanced"], var.gateway_class)
    error_message = "Allowed values are Basic, HighAvailability, Enhanced or Advanced."
  }
}

variable "type" {
  description = "(Required, ForceNew) gateway type. the valid values: File, Iscsi."
  type        = string
  default     = "File"

  validation {
    condition     = contains(["File", "Iscsi"], var.type)
    error_message = "Allowed values are File or Iscsi."
  }
}

variable "release_after_expiration" {
  description = "Whether to release the gateway due to expiration."
  type        = bool
  default     = null
}

variable "public_network_bandwidth" {
  description = "The public network bandwidth of gateway. Valid values between 5 and 200. Defaults to 5."
  type        = number
  default     = null
}

variable "location" {
  description = "(Required, ForceNew) gateway location. the valid values: Cloud, On_Premise."
  type        = string
  default     = "Cloud"

  validation {
    condition     = contains(["Cloud", "On_Premise"], var.location)
    error_message = "Allowed values are Cloud or On_Premise."
  }
}

variable "gateway_name" {
  description = "(Required) The name of gateway."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "(ForceNew) The vswitch id of gateway."
  type        = string
  default     = ""
}

#################
# Cache Disk
#################
variable "create_cache_disk" {
  description = "Controls if cache disk should be created"
  type        = bool
  default     = false
}

variable "cache_disk_category" {
  description = "(ForceNew) The cache disk type. Valid values: cloud_efficiency, cloud_ssd."
  type        = string
  default     = "cloud_efficiency"

  validation {
    condition     = contains(["cloud_efficiency", "cloud_ssd"], var.cache_disk_category)
    error_message = "Allowed values are cloud_efficiency or cloud_ssd."
  }
}

variable "cache_disk_size_in_gb" {
  description = "(Required) size of the cache disk. Unit: GB. The upper limit of the basic gateway cache disk is 1 TB (1024 GB), that of the standard gateway is 2 TB (2048 GB), and that of other gateway cache disks is 32 TB (32768 GB). The lower limit for the file gateway cache disk capacity is 40 GB, and the lower limit for the block gateway cache disk capacity is 20 GB."
  type        = string
  default     = ""
}
