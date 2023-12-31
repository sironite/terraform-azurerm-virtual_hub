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

  count = var.enable_vpn_gateway ? 1 : 0

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

module "point_to_site_vpn_gateway" {
  source = "./modules/azurerm_point_to_site_vpn_gateway"

  count = var.enable_point_to_site_vpn_gateway ? 1 : 0

  point_to_site_vpn_gateway_name      = var.point_to_site_vpn_gateway_name
  resource_group_name                 = var.resource_group_name
  location                            = var.location
  scale_unit                          = var.point_to_site_vpn_gateway_scale_unit
  virtual_hub_id                      = azurerm_virtual_hub.this.id
  vpn_server_configuration_id         = var.vpn_server_configuration_id
  dns_servers                         = var.dns_servers
  routing_preference_internet_enabled = var.routing_preference_internet_enabled

  connection_configuration_name            = var.connection_configuration_name
  vpn_client_address_pool_address_prefixes = var.vpn_client_address_pool_address_prefixes

  route_associated_route_table_id = var.route_associated_route_table_id
  route_inbound_route_map_id      = var.route_inbound_route_map_id
  route_outbound_route_map_id     = var.route_outbound_route_map_id

  route_propagated_route_table_ids    = var.route_propagated_route_table_ids
  route_propagated_route_table_labels = var.route_propagated_route_table_labels

  tags = var.tags

}

module "express_route_gateway" {
  source = "./modules/azurerm_express_route_gateway"

  count = var.enable_express_route_gateway ? 1 : 0

  express_route_gateway_name    = var.express_route_gateway_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  virtual_hub_id                = azurerm_virtual_hub.this.id
  scale_units                   = var.express_route_scale_units
  allow_non_virtual_wan_traffic = var.allow_non_virtual_wan_traffic

  tags = var.tags
}