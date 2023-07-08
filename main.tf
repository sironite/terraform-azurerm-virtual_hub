resource "azurerm_virtual_hub" "this" {
  name                = var.vhub_name
  resource_group_name = var.resource_group_name
  location            = var.location

  address_prefix         = var.address_prefix
  virtual_wan_id         = var.vwan_id
  hub_routing_preference = var.hub_routing_preference
  sku                    = var.sku

  dynamic "route" {
    for_each = var.enable_route != false ? [1] : []
    content {
      address_prefixes    = var.route_address_prefixes
      next_hop_ip_address = var.next_hop_ip_address
    }
  }

  tags = var.tags

}

module "vpn_gateway" {
  source = "./modules/azurerm_vpn_gateway"

  count = var.enabled_vpn_gateway ? 1 : 0

  vpn_gateway_name                      = var.vpn_gateway_name
  resource_group_name                   = var.resource_group_name
  location                              = var.location
  virtual_hub_id                        = azurerm_virtual_hub.this.id
  bgp_route_translation_for_nat_enabled = var.bgp_route_translation_for_nat_enabled
  routing_preference                    = var.routing_preference
  scale_unit                            = var.vpn_gateway_scale_unit

  enable_bgp_settings      = var.enable_bgp_settings
  bgp_settings_asn         = var.bgp_settings_asn
  bgp_settings_peer_weight = var.bgp_settings_peer_weight

  enable_instance_0_bgp_peering_address     = var.enable_instance_0_bgp_peering_address
  instance_0_bgp_peering_address_custom_ips = var.instance_0_bgp_peering_address_custom_ips

  enable_instance_1_bgp_peering_address     = var.enable_instance_1_bgp_peering_address
  instance_1_bgp_peering_address_custom_ips = var.instance_1_bgp_peering_address_custom_ips

  tags = var.tags
}

# module "vpn_gateway" {
#   source = "./modules/azurerm_vpn_server_configuration"
# }

module "express_route_gateway" {
  source = "./modules/azurerm_express_route_gateway"

  count = var.enabled_express_route_gateway ? 1 : 0

  name                          = var.express_route_gateway_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  virtual_hub_id                = azurerm_virtual_hub.this.id
  scale_units                   = var.express_route_scale_units
  allow_non_virtual_wan_traffic = var.allow_non_virtual_wan_traffic

  tags = var.tags
}