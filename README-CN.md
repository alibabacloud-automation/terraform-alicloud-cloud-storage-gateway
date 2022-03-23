Terraform module which creates Cloud Storage Gateway resources on Alibaba Cloud.

terraform-alicloud-clickhouse
=====================================================================

[English](README.md) | 简体中文

本 Module 自动化管理云存储网关，包括集群、网关、缓存等，包含：`CloudStorageGateway`。

本 Module 支持创建以下资源:

* [alicloud_cloud_storage_gateway_storage_bundle](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_storage_bundle)
* [alicloud_cloud_storage_gateway_gateway](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_gateway)
* [alicloud_cloud_storage_gateway_gateway_cache_disk](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_storage_gateway_gateway_cache_disk)

## 用法

```hcl
module "example" {
  source                  = "terraform-alicloud-modules/cloud-storage-gateway/alicloud"
  #alicloud_cloud_storage_gateway_storage_bundle
  storage_bundle_name      = "tf-test-storage-bundle"
  bundle_description       = "tf-test-storage-bundle"
  #alicloud_cloud_storage_gateway_gateway
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
  cache_disk_category      = "cloud_efficiency"
  cache_disk_size_in_gb    = 50
}
```

## 示例

* [CloudStorageGateway 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-cloud-storage-gateway/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 1.0.11 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.144.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.144.0 |

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
