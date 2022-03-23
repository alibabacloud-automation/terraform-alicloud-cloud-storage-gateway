resource "alicloud_cloud_storage_gateway_storage_bundle" "bundle" {
  count               = var.create_storage_bundle ? 1 : 0
  storage_bundle_name = var.storage_bundle_name
  description         = var.bundle_description
}

resource "alicloud_cloud_storage_gateway_gateway" "gateway" {
  count                    = var.create_gateway ? 1 : 0
  description              = var.gateway_description
  gateway_class            = var.gateway_class
  type                     = var.type
  payment_type             = "PayAsYouGo"
  vswitch_id               = var.vswitch_id
  release_after_expiration = var.release_after_expiration
  public_network_bandwidth = var.public_network_bandwidth
  storage_bundle_id        = local.this_storage_bundle_id
  location                 = var.location
  gateway_name             = var.gateway_name
}

resource "alicloud_cloud_storage_gateway_gateway_cache_disk" "disk" {
  count                 = var.create_cache_disk ? 1 : 0
  cache_disk_category   = var.cache_disk_category
  gateway_id            = local.this_gateway_id
  cache_disk_size_in_gb = var.cache_disk_size_in_gb
}
