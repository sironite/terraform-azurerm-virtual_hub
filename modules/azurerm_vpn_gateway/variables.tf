variable "vpn_gateway_name" {
  type        = string
  description = "The name of the VPN gateway."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the VPN gateway."
}

variable "location" {
  type        = string
  description = "The location in which to create the VPN gateway."
}

variable "virtual_hub_id" {
  type        = string
  description = "The ID of the virtual hub to which the VPN gateway should be attached."
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

variable "scale_unit" {
  type        = number
  description = "The scale unit for the VPN gateway."
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

variable "tags" {
  type        = map(string)
  description = "The tags to apply to the VPN gateway."
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