<!-- BEGIN_TF_DOCS -->
 # Virtual Hub within a Virtual WAN
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-virtual_hub/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_gateway)

# Usage - Module

## VPN Gateway
```hcl
module "virtual_hub" {
  source  = "sironite/virtual_hub/azurerm"
  version = "X.X.X"

  vhub_name           = "example-vhub"
  resource_group_name = "example-rg"
  location            = "eastus"

  address_prefix = "10.45.10.0/23"
  virtual_wan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/virtualWans/example-vwan"

  enable_vpn_gateway     = true
  vpn_gateway_name       = "example-vpn-gateway"
  vpn_gateway_scale_unit = 2


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
| [azurerm_vpn_gateway.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_gateway) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| location | The location in which to create the VPN gateway. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the VPN gateway. | `string` | yes |
| scale\_unit | The scale unit for the VPN gateway. | `number` | yes |
| tags | The tags to apply to the VPN gateway. | `map(string)` | yes |
| virtual\_hub\_id | The ID of the virtual hub to which the VPN gateway should be attached. | `string` | yes |
| vpn\_gateway\_name | The name of the VPN gateway. | `string` | yes |
| bgp\_route\_translation\_for\_nat\_enabled | Whether BGP route translation for NAT is enabled on the VPN gateway. | `bool` | no |
| bgp\_settings\_asn | The ASN for the BGP settings of the VPN gateway. | `number` | no |
| bgp\_settings\_peer\_weight | The peer weight for the BGP settings of the VPN gateway. | `number` | no |
| enable\_bgp\_settings | Whether to enable BGP settings for the VPN gateway. | `bool` | no |
| enable\_instance\_0\_bgp\_peering\_address | Whether to enable the instance 0 BGP peering address for the VPN gateway. | `bool` | no |
| enable\_instance\_1\_bgp\_peering\_address | Whether to enable the instance 1 BGP peering address for the VPN gateway. | `bool` | no |
| instance\_0\_bgp\_peering\_address\_custom\_ips | The custom IPs for the instance 0 BGP peering address of the VPN gateway. | `list(string)` | no |
| instance\_1\_bgp\_peering\_address\_custom\_ips | The custom IPs for the instance 1 BGP peering address of the VPN gateway. | `list(string)` | no |
| routing\_preference | The routing preference for the VPN gateway. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpn\_gateway\_id | The ID of the VPN gateway. |
| vpn\_gateway\_name | The name of the VPN gateway. |

## Related documentation
<!-- END_TF_DOCS -->