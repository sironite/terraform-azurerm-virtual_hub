<!-- BEGIN_TF_DOCS -->
 # Virtual Hub within a Virtual WAN
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-virtual_hub/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/express_route_gateway)

# Usage - Module

## ExpressRoute gateway

```hcl

module "virtual_hub" {
  source  = "sironite/virtual_hub/azurerm"
  version = "X.X.X"

  vhub_name           = "example-vhub"
  resource_group_name = "example-rg"
  location            = "eastus"

  address_prefix = "10.45.10.0/23"
  virtual_wan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/virtualWans/example-vwan"

  enable_express_route          = true
  express_route_gateway_name    = "example-ergw"
  scale_units                   = 2
  allow_non_virtual_wan_traffic = true

}
```
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_express_route_gateway.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/express_route_gateway) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| express\_route\_gateway\_name | The name of the ExpressRoute gateway. | `string` | yes |
| location | The location in which to create the ExpressRoute gateway. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the ExpressRoute gateway. | `string` | yes |
| scale\_units | The number of scale units to allocate to the ExpressRoute gateway. | `number` | yes |
| virtual\_hub\_id | The ID of the virtual hub to which the ExpressRoute gateway should be attached. | `string` | yes |
| allow\_non\_virtual\_wan\_traffic | Whether to allow non-virtual WAN traffic to flow through the ExpressRoute gateway. | `bool` | no |
| tags | A map of tags to apply to the ExpressRoute gateway. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| express\_route\_gateway\_id | The ID of the ExpressRoute gateway. |
| express\_route\_gateway\_name | The name of the ExpressRoute gateway. |

## Related documentation
<!-- END_TF_DOCS -->