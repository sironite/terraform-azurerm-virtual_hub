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

| Name | Source | Version |
|------|--------|---------|
| express\_route\_gateway | ./modules/azurerm_express_route_gateway | n/a |
| point\_to\_site\_vpn\_gateway | ./modules/azurerm_point_to_site_vpn_gateway | n/a |
| vpn\_gateway | ./modules/azurerm_vpn_gateway | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_hub.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_hub) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| address\_prefix | The address prefix of the virtual hub. | `string` | yes |
| connection\_configuration\_name | The name of the connection configuration for the Point-to-Site VPN Gateway. | `string` | yes |
| location | The location of the virtual hub. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the virtual hub. | `string` | yes |
| vhub\_name | The name of the virtual hub. | `string` | yes |
| vpn\_client\_address\_pool\_address\_prefixes | The list of address prefixes to use for the VPN client address pool. | `list(string)` | yes |
| vwan\_id | The ID of the virtual WAN. | `string` | yes |
| allow\_non\_virtual\_wan\_traffic | Whether to allow non-virtual WAN traffic to flow through the ExpressRoute gateway. | `bool` | no |
| bgp\_route\_translation\_for\_nat\_enabled | Whether BGP route translation for NAT is enabled on the VPN gateway. | `bool` | no |
| bgp\_settings\_asn | The ASN for the BGP settings of the VPN gateway. | `number` | no |
| bgp\_settings\_peer\_weight | The peer weight for the BGP settings of the VPN gateway. | `number` | no |
| dns\_servers | The list of DNS servers to use for the Point-to-Site VPN Gateway. | `list(string)` | no |
| enable\_bgp\_settings | Whether to enable BGP settings for the VPN gateway. | `bool` | no |
| enable\_express\_route\_gateway | Whether to enable an ExpressRoute gateway for the virtual hub. | `bool` | no |
| enable\_instance\_0\_bgp\_peering\_address | Whether to enable the instance 0 BGP peering address for the VPN gateway. | `bool` | no |
| enable\_instance\_1\_bgp\_peering\_address | Whether to enable the instance 1 BGP peering address for the VPN gateway. | `bool` | no |
| enable\_point\_to\_site\_vpn\_gateway | Whether to enable a point-to-site VPN gateway for the virtual hub. | `bool` | no |
| enable\_route | Whether to enable a route for the virtual hub. | `bool` | no |
| enable\_vpn\_gateway | Whether to enable a VPN gateway for the virtual hub. | `bool` | no |
| express\_route\_gateway\_name | The name of the ExpressRoute gateway. | `string` | no |
| express\_route\_scale\_units | The number of scale units to allocate to the ExpressRoute gateway. | `number` | no |
| hub\_routing\_preference | The routing preference of the virtual hub. | `string` | no |
| instance\_0\_bgp\_peering\_address\_custom\_ips | The custom IPs for the instance 0 BGP peering address of the VPN gateway. | `list(string)` | no |
| instance\_1\_bgp\_peering\_address\_custom\_ips | The custom IPs for the instance 1 BGP peering address of the VPN gateway. | `list(string)` | no |
| next\_hop\_ip\_address | The IP address of the next hop for the route. | `string` | no |
| point\_to\_site\_vpn\_gateway\_name | The name of the Point-to-Site VPN Gateway. | `string` | no |
| point\_to\_site\_vpn\_gateway\_scale\_unit | The scale unit of the Point-to-Site VPN Gateway. | `number` | no |
| route\_address\_prefixes | The address prefixes for the route. | `list(string)` | no |
| route\_associated\_route\_table\_id | The ID of the associated route table for the Point-to-Site VPN Gateway. | `string` | no |
| route\_inbound\_route\_map\_id | The ID of the inbound route map for the Point-to-Site VPN Gateway. | `string` | no |
| route\_outbound\_route\_map\_id | The ID of the outbound route map for the Point-to-Site VPN Gateway. | `string` | no |
| route\_propagated\_route\_table\_ids | The ID of the propagated route table for the Point-to-Site VPN Gateway. | `list(string)` | no |
| route\_propagated\_route\_table\_labels | The label of the propagated route table for the Point-to-Site VPN Gateway. | `list(string)` | no |
| routing\_preference | The routing preference for the VPN gateway. | `string` | no |
| routing\_preference\_internet\_enabled | Whether or not to enable Internet routing preference for the Point-to-Site VPN Gateway. | `bool` | no |
| sku | The SKU of the virtual hub. | `string` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | no |
| vpn\_gateway\_name | The name of the VPN gateway. | `string` | no |
| vpn\_gateway\_scale\_unit | The scale unit for the VPN gateway. | `number` | no |
| vpn\_server\_configuration\_id | The ID of the VPN server configuration to use for the Point-to-Site VPN Gateway. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| express\_route\_gateway\_id | The ID of the ExpressRoute gateway. |
| point\_to\_site\_vpn\_gateway\_id | The ID of the point-to-site VPN gateway. |
| virtual\_hub\_id | The ID of the virtual hub. |
| virtual\_hub\_name | The name of the virtual hub. |
| vpn\_gateway\_id | The ID of the VPN gateway. |

## Related documentation
<!-- END_TF_DOCS -->