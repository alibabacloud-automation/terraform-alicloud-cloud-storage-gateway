locals {
  # Get ID of cloud storage gateway resources
  this_storage_bundle_id = var.create_storage_bundle ? concat(alicloud_cloud_storage_gateway_storage_bundle.bundle.*.id, [""])[0] : var.storage_bundle_id
  this_gateway_id        = var.create_storage_bundle ? concat(alicloud_cloud_storage_gateway_gateway.gateway.*.id, [""])[0] : var.gateway_id
}