output "express_route_gateway_id" {
  description = "The ID of the ExpressRoute gateway."
  value       = azurerm_express_route_gateway.this.id
}

output "express_route_gateway_name" {
  description = "The name of the ExpressRoute gateway."
  value       = azurerm_express_route_gateway.this.name
}