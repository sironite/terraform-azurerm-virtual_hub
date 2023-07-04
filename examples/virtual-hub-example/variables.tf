variable "vhub_name" {
  type        = string
  description = "The name of the virtual hub."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the virtual hub."
}

variable "location" {
  type        = string
  description = "The location of the virtual hub."
}

variable "address_prefix" {
  type        = string
  description = "The address prefix of the virtual hub."
}

variable "vwan_id" {
  type        = string
  description = "The ID of the virtual WAN."
}

variable "hub_routing_preference" {
  type        = string
  description = "The routing preference of the virtual hub."
  default     = "ExpressRoute"
}

variable "sku" {
  type        = string
  description = "The SKU of the virtual hub."
  default     = "Standard"
}

variable "enable_route" {
  type        = bool
  description = "Whether to enable a route for the virtual hub."
  default     = false
}

variable "route_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the route."
  default     = []
}

variable "next_hop_ip_address" {
  type        = string
  description = "The IP address of the next hop for the route."
  default     = ""
}