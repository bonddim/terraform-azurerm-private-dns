variable "virtual_network_ids" {
  type        = map(string)
  description = "(Required) "
}

variable "private_dns_zone_name" {
  type        = string
  description = "(Required) Private DNS zone name"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create resources"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to resources"
}
