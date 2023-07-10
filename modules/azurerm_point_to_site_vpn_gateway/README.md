<!-- BEGIN_TF_DOCS -->
 # VPN Server Configuration
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/point_to_site_vpn_gateway)

# Usage - Module

## Point-to-Site VPN Gateway
```hcl

module "virtual_hub" {
  source  = "sironite/virtual_hub/azurerm"
  version = "X.X.X"

  vhub_name           = "example-vhub"
  resource_group_name = "example-rg"
  location            = "eastus"

  address_prefix = "10.45.10.0/23"
  virtual_wan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/virtualWans/example-vwan"

  enable_point_to_site_vpn_gateway         = true
  point_to_site_vpn_gateway_name           = "example-ptsvpngw"
  vpn_server_configuration_id              = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/vpnServerConfigurations/example-vpnserverconfig"
  routing_preference_internet_enabled      = true
  connection_configuration_name            = "example-connectionconfig"
  vpn_client_address_pool_address_prefixes = [""]
  point_to_site_vpn_gateway_scale_unit     = 1
  route_associated_route_table_id          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/routeTables/example-routetable"

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
| [azurerm_point_to_site_vpn_gateway.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/point_to_site_vpn_gateway) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| connection\_configuration\_name | The name of the connection configuration for the Point-to-Site VPN Gateway. | `string` | yes |
| dns\_servers | The list of DNS servers to use for the Point-to-Site VPN Gateway. | `list(string)` | yes |
| location | The location in which to create the Point-to-Site VPN Gateway. | `string` | yes |
| point\_to\_site\_vpn\_gateway\_name | The name of the Point-to-Site VPN Gateway. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the Point-to-Site VPN Gateway. | `string` | yes |
| route\_associated\_route\_table\_id | The ID of the associated route table for the Point-to-Site VPN Gateway. | `string` | yes |
| route\_inbound\_route\_map\_id | The ID of the inbound route map for the Point-to-Site VPN Gateway. | `string` | yes |
| route\_outbound\_route\_map\_id | The ID of the outbound route map for the Point-to-Site VPN Gateway. | `string` | yes |
| route\_propagated\_route\_table\_ids | The ID of the propagated route table for the Point-to-Site VPN Gateway. | `list(string)` | yes |
| route\_propagated\_route\_table\_labels | The label of the propagated route table for the Point-to-Site VPN Gateway. | `list(string)` | yes |
| routing\_preference\_internet\_enabled | Whether or not to enable Internet routing preference for the Point-to-Site VPN Gateway. | `bool` | yes |
| scale\_unit | The scale unit of the Point-to-Site VPN Gateway. | `number` | yes |
| virtual\_hub\_id | The ID of the Virtual Hub to which the Point-to-Site VPN Gateway should be attached. | `string` | yes |
| vpn\_client\_address\_pool\_address\_prefixes | The list of address prefixes to use for the VPN client address pool. | `list(string)` | yes |
| vpn\_server\_configuration\_id | The ID of the VPN server configuration to use for the Point-to-Site VPN Gateway. | `string` | yes |
| tags | The tags to apply to the Point-to-Site VPN Gateway. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| point\_to\_site\_vpn\_gateway\_id | The ID of the Point-to-Site VPN Gateway. |
| point\_to\_site\_vpn\_gateway\_name | The name of the Point-to-Site VPN Gateway. |

## Related documentation
<!-- END_TF_DOCS -->