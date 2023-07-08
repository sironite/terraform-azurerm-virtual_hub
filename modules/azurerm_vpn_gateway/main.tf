resource "azurerm_vpn_gateway" "this" {
  name                                  = var.vpn_gateway_name
  resource_group_name                   = var.resource_group_name
  location                              = var.location
  virtual_hub_id                        = var.virtual_hub_id
  bgp_route_translation_for_nat_enabled = var.bgp_route_translation_for_nat_enabled
  routing_preference                    = var.routing_preference
  scale_unit                            = var.scale_unit

  dynamic "bgp_settings" {
    count = var.enable_bgp_settings ? 1 : 0
    content {
      asn         = var.bgp_settings_asn
      peer_weight = var.bgp_settings_peer_weight
    }

    dynamic "instance_0_bgp_peering_address" {
      count = var.enable_instance_0_bgp_peering_address ? 1 : 0
      content {
        custom_ips = var.instance_0_bgp_peering_address_custom_ips
      }
    }

    dynamic "instance_1_bgp_peering_address" {
      count = var.enable_instance_1_bgp_peering_address ? 1 : 0
      content {
        custom_ips = var.instance_1_bgp_peering_address_custom_ips
      }
    }
  }

  tags = var.tags
}
