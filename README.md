Terraform module which creates Cloud Storage Gateway resources on Alibaba Cloud.

terraform-alicloud-cloud-storage-gateway
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-cloud-storage-gateway/blob/main/README-CN.md)

This module is used to create Cloud Storage Gateway resources on Alibaba Cloud.

These types of resources are supported:

* [alicloud_cloud_storage_gateway_storage_bundle](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_storage_bundle)
* [alicloud_cloud_storage_gateway_gateway](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_gateway)
* [alicloud_cloud_storage_gateway_gateway_cache_disk](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_gateway_cache_disk)

## Usage

```hcl
module "example" {
  source                  = "terraform-alicloud-modules/cloud-storage-gateway/alicloud"
  #alicloud_cloud_storage_gateway_storage_bundle
  create_storage_bundle    = true
  storage_bundle_name      = "tf-test-storage-bundle"
  bundle_description       = "tf-test-storage-bundle"
  #alicloud_cloud_storage_gateway_gateway
  create_gateway           = true
  gateway_description      = "tf-test-gateway"
  gateway_class            = "Standard"
  type                     = "File"
  payment_type             = "PayAsYouGo"
  vswitch_id               = "vsw-abc12345"
  release_after_expiration = false
  public_network_bandwidth = 40
  location                 = "Cloud"
  gateway_name             = "tf-test-gateway"
  #alicloud_cloud_storage_gateway_gateway_cache_disk
  create_cache_disk        = true
  cache_disk_category      = "cloud_efficiency"
  cache_disk_size_in_gb    = 50
}
```
## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-cloud-storage-gateway/tree/main/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.144.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.144.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)