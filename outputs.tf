output "virtual_hub_id" {
  description = "The ID of the virtual hub."
  value       = azurerm_virtual_hub.this.id
}

output "virtual_hub_name" {
  description = "The name of the virtual hub."
  value       = azurerm_virtual_hub.this.name
}

