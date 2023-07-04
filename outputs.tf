output "virtual_hub_id" {
  description = "The ID of the virtual hub."
  value       = azurerm_virtual_hub.this.id
}

output "virtual_hub_name" {
  description = "The name of the virtual hub."
  value       = azurerm_virtual_hub.this.name
}

output "virtual_hub_address_prefix" {
  description = "The address prefix of the virtual hub."
  value       = azurerm_virtual_hub.this.address_prefix
}

output "virtual_hub_sku" {
  description = "The SKU of the virtual hub."
  value       = azurerm_virtual_hub.this.sku
}

output "virtual_hub_location" {
  description = "The location of the virtual hub."
  value       = azurerm_virtual_hub.this.location
}

output "virtual_hub_resource_group_name" {
  description = "The name of the resource group in which to create the virtual hub."
  value       = azurerm_virtual_hub.this.resource_group_name
}