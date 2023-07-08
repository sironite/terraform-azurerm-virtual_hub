resource "azurerm_point_to_site_vpn_gateway" "this" {
  name                                = var.point_to_site_vpn_gateway_name
  resource_group_name                 = var.resource_group_name
  location                            = var.location
  scale_unit                          = var.scale_unit
  virtual_hub_id                      = var.virtual_hub_id
  vpn_server_configuration_id         = var.vpn_server_configuration_id
  dns_servers                         = var.dns_servers
  routing_preference_internet_enabled = var.routing_preference_internet_enabled

  connection_configuration {
    name = var.connection_configuration_name
    vpn_client_address_pool {
      address_prefixes = var.vpn_client_address_pool_address_prefixes
    }
    route {
      associated_route_table_id = var.route_associated_route_table_id
      inbound_route_map_id      = var.route_inbound_route_map_id
      outbound_route_map_id     = var.route_outbound_route_map_id
      propagated_route_table {
        id    = var.route_propagated_route_table_id
        label = var.route_propagated_route_table_label
      }
    }
  }

  tags = var.tags
}