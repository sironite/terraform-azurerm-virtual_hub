variable "express_route_gateway_name" {
  type        = string
  description = "The name of the ExpressRoute gateway."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the ExpressRoute gateway."
}

variable "location" {
  type        = string
  description = "The location in which to create the ExpressRoute gateway."
}

variable "virtual_hub_id" {
  type        = string
  description = "The ID of the virtual hub to which the ExpressRoute gateway should be attached."
}

variable "scale_units" {
  type        = number
  description = "The number of scale units to allocate to the ExpressRoute gateway."
}

variable "allow_non_virtual_wan_traffic" {
  type        = bool
  description = "Whether to allow non-virtual WAN traffic to flow through the ExpressRoute gateway."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the ExpressRoute gateway."
  default     = {}
}