output "cloud_storage_gateway_storage_bundle_id" {
  value = concat(alicloud_cloud_storage_gateway_storage_bundle.bundle.*.id, [""])[0]
}

output "cloud_storage_gateway_gateway_id" {
  value = concat(alicloud_cloud_storage_gateway_gateway.gateway.*.id, [""])[0]
}

output "cloud_storage_gateway_gateway_cache_disk_id" {
  value = concat(alicloud_cloud_storage_gateway_gateway_cache_disk.disk.*.id, [""])[0]
}
