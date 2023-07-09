output "vpn_gateway_id" {
  description = "The ID of the VPN gateway."
  value       = azurerm_vpn_gateway.this.id
}

output "vpn_gateway_name" {
  description = "The name of the VPN gateway."
  value       = azurerm_vpn_gateway.this.name
}

