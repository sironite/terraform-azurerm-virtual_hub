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

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

variable "enable_express_route_gateway" {
  type        = bool
  description = "Whether to enable an ExpressRoute gateway for the virtual hub."
  default     = false
}
variable "express_route_gateway_name" {
  type        = string
  description = "The name of the ExpressRoute gateway."
  default     = ""
}

variable "express_route_scale_units" {
  type        = number
  description = "The number of scale units to allocate to the ExpressRoute gateway."
  default     = null
}

variable "allow_non_virtual_wan_traffic" {
  type        = bool
  description = "Whether to allow non-virtual WAN traffic to flow through the ExpressRoute gateway."
  default     = false
}


variable "enable_vpn_gateway" {
  type        = bool
  description = "Whether to enable a VPN gateway for the virtual hub."
  default     = false
}

variable "vpn_gateway_name" {
  type        = string
  description = "The name of the VPN gateway."
  default     = ""
}

variable "bgp_route_translation_for_nat_enabled" {
  type        = bool
  description = "Whether BGP route translation for NAT is enabled on the VPN gateway."
  default     = false
}

variable "routing_preference" {
  type        = string
  description = "The routing preference for the VPN gateway."
  default     = "Microsoft Network"
}

variable "vpn_gateway_scale_unit" {
  type        = number
  description = "The scale unit for the VPN gateway."
  default     = null
}

variable "bgp_settings_asn" {
  type        = number
  description = "The ASN for the BGP settings of the VPN gateway."
  default     = null
}

variable "bgp_settings_peer_weight" {
  type        = number
  description = "The peer weight for the BGP settings of the VPN gateway."
  default     = null
}

variable "instance_0_bgp_peering_address_custom_ips" {
  type        = list(string)
  description = "The custom IPs for the instance 0 BGP peering address of the VPN gateway."
  default     = []
}

variable "instance_1_bgp_peering_address_custom_ips" {
  type        = list(string)
  description = "The custom IPs for the instance 1 BGP peering address of the VPN gateway."
  default     = []
}

variable "enable_bgp_settings" {
  type        = bool
  description = "Whether to enable BGP settings for the VPN gateway."
  default     = false
}

variable "enable_instance_0_bgp_peering_address" {
  type        = bool
  description = "Whether to enable the instance 0 BGP peering address for the VPN gateway."
  default     = false
}

variable "enable_instance_1_bgp_peering_address" {
  type        = bool
  description = "Whether to enable the instance 1 BGP peering address for the VPN gateway."
  default     = false
}