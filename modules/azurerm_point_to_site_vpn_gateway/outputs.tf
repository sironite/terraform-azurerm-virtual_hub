output "point_to_site_vpn_gateway_id" {
  description = "The ID of the Point-to-Site VPN Gateway."
  value       = azurerm_point_to_site_vpn_gateway.this.id
}

output "point_to_site_vpn_gateway_name" {
  description = "The name of the Point-to-Site VPN Gateway."
  value       = azurerm_point_to_site_vpn_gateway.this.name
}
