data "alicloud_cloud_storage_gateway_stocks" "default" {
  gateway_class = var.gateway_class
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "tf-test-gateway"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "tf-test-gateway"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_cloud_storage_gateway_stocks.default.stocks.0.zone_id]
}


module "example" {
  source = "../.."

  #alicloud_cloud_storage_gateway_storage_bundle
  create_storage_bundle = true
  storage_bundle_name   = var.storage_bundle_name
  bundle_description    = var.bundle_description

  #alicloud_cloud_storage_gateway_gateway
  create_gateway           = true
  gateway_description      = var.gateway_description
  gateway_class            = var.gateway_class
  type                     = "File"
  vswitch_id               = module.vpc.this_vswitch_ids[0]
  release_after_expiration = var.release_after_expiration
  public_network_bandwidth = var.public_network_bandwidth
  location                 = "Cloud"
  gateway_name             = var.gateway_name

  #alicloud_cloud_storage_gateway_gateway_cache_disk
  create_cache_disk     = true
  cache_disk_category   = "cloud_efficiency"
  cache_disk_size_in_gb = var.cache_disk_size_in_gb

}