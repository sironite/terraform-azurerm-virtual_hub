output "virtual_hub_id" {
  description = "The ID of the virtual hub."
  value       = azurerm_virtual_hub.this.id
}

output "virtual_hub_name" {
  description = "The name of the virtual hub."
  value       = azurerm_virtual_hub.this.name
}
output "vpn_gateway_id" {
  description = "The ID of the VPN gateway."
  value = module.vpn_gateway.id
}

output "point_to_site_vpn_gateway_id" {
  description = "The ID of the point-to-site VPN gateway."
  value = module.point_to_site_vpn_gateway.id
}

output "express_route_gateway_id" {
  description = "The ID of the ExpressRoute gateway."
  value = module.express_route_gateway.id
}


