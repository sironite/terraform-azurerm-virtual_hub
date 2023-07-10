variable "point_to_site_vpn_gateway_name" {
  type        = string
  description = "The name of the Point-to-Site VPN Gateway."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Point-to-Site VPN Gateway."
}

variable "location" {
  type        = string
  description = "The location in which to create the Point-to-Site VPN Gateway."
}

variable "scale_unit" {
  type        = number
  description = "The scale unit of the Point-to-Site VPN Gateway."
}

variable "virtual_hub_id" {
  type        = string
  description = "The ID of the Virtual Hub to which the Point-to-Site VPN Gateway should be attached."
}

variable "vpn_server_configuration_id" {
  type        = string
  description = "The ID of the VPN server configuration to use for the Point-to-Site VPN Gateway."
}

variable "dns_servers" {
  type        = list(string)
  description = "The list of DNS servers to use for the Point-to-Site VPN Gateway."
}

variable "routing_preference_internet_enabled" {
  type        = bool
  description = "Whether or not to enable Internet routing preference for the Point-to-Site VPN Gateway."
}

variable "connection_configuration_name" {
  type        = string
  description = "The name of the connection configuration for the Point-to-Site VPN Gateway."
}

variable "vpn_client_address_pool_address_prefixes" {
  type        = list(string)
  description = "The list of address prefixes to use for the VPN client address pool."
}

variable "route_associated_route_table_id" {
  type        = string
  description = "The ID of the associated route table for the Point-to-Site VPN Gateway."
}

variable "route_inbound_route_map_id" {
  type        = string
  description = "The ID of the inbound route map for the Point-to-Site VPN Gateway."
}

variable "route_outbound_route_map_id" {
  type        = string
  description = "The ID of the outbound route map for the Point-to-Site VPN Gateway."
}

variable "route_propagated_route_table_ids" {
  type        = list(string)
  description = "The ID of the propagated route table for the Point-to-Site VPN Gateway."
}

variable "route_propagated_route_table_labels" {
  type        = list(string)
  description = "The label of the propagated route table for the Point-to-Site VPN Gateway."
}

variable "tags" {
  type        = map(string)
  description = "The tags to apply to the Point-to-Site VPN Gateway."
  default     = {}
}