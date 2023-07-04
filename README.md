<!-- BEGIN_TF_DOCS -->
 # Virtual Hub within a Virtual WAN
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-virtual_hub/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub)

# Usage - Module

## Virtual Hub within a Virtual WAN

```hcl

module "virtual_hub" {
  source  = "sironite/virtual_hub/azurerm"
  version = "X.X.X"

  vhub_name           = "example-vhub"
  resource_group_name = "example-rg"
  location            = "eastus"

  address_prefix = "10.45.10.0/23"
  virtual_wan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/virtualWans/example-vwan"

}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_hub.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| address\_prefix | The address prefix of the virtual hub. | `string` | yes |
| location | The location of the virtual hub. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the virtual hub. | `string` | yes |
| vhub\_name | The name of the virtual hub. | `string` | yes |
| vwan\_id | The ID of the virtual WAN. | `string` | yes |
| enable\_route | Whether to enable a route for the virtual hub. | `bool` | no |
| hub\_routing\_preference | The routing preference of the virtual hub. | `string` | no |
| next\_hop\_ip\_address | The IP address of the next hop for the route. | `string` | no |
| route\_address\_prefixes | The address prefixes for the route. | `list(string)` | no |
| sku | The SKU of the virtual hub. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_hub\_id | The ID of the virtual hub. |
| virtual\_hub\_name | The name of the virtual hub. |

## Related documentation
<!-- END_TF_DOCS -->