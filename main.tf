resource "azurerm_virtual_hub" "this" {
  name                = var.vhub_name
  resource_group_name = var.resource_group_name
  location            = var.location

  address_prefix         = var.address_prefix
  virtual_wan_id         = var.vwan_id
  hub_routing_preference = var.hub_routing_preference
  sku                    = var.sku

  dynamic "route" {
    for_each = var.enable_route != null ? [1] : []
    content {
      address_prefixes    = var.route_address_prefixes
      next_hop_ip_address = var.next_hop_ip_address
    }
  }

  tags = var.tags

}

