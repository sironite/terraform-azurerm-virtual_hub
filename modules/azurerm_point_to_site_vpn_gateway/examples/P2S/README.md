# Terraform module | AzureRM - Virtual Hub

This Terraform module is designed to create a Virtual Hub for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Virtual Hub`

```hcl

module "virtual_hub" {
  source  = "sironite/virtual_hub/azurerm"
  version = "X.X.X"

  vhub_name           = "example-vhub"
  resource_group_name = "example-rg"
  location            = "eastus"

  address_prefix = "10.45.10.0/23"
  virtual_wan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/virtualWans/example-vwan"

  enable_point_to_site_vpn_gateway = true
  point_to_site_vpn_gateway_name   = "example-ptsvpngw"
  vpn_server_configuration_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/vpnServerConfigurations/example-vpnserverconfig"
  routing_preference_internet_enabled = true
  connection_configuration_name      = "example-connectionconfig"
  vpn_client_address_pool_address_prefixes = [""]
  
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
