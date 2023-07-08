
resource "azurerm_express_route_gateway" "this" {
  name                          = var.express_route_gateway_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  virtual_hub_id                = var.virtual_hub_id
  scale_units                   = var.scale_units
  allow_non_virtual_wan_traffic = var.allow_non_virtual_wan_traffic

  tags = var.tags
}