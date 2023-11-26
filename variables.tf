variable "name" {
  type        = string
  description = "(Required) Private DNS zone name"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create resources"
}

variable "records" {
  type        = any
  default     = {}
  description = <<-EOT
  DNS Zone records map:
  ```
  a     - (Optional) List with DNS A records
  aaaa  - (Optional) List with DNS AAAA records
  cname - (Optional) List with DNS CNAME records
  mx    - (Optional) List with DNS MX records
  ptr   - (Optional) List with DNS PTR records
  srv   - (Optional) List with DNS SRV records
  txt   - (Optional) List with DNS TXT records
  soa   - (Optional) Map with DNS Zone SOA record configuration
  ```
  Refer to terraform documentation for supported attributes:
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_aaaa_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_cname_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_mx_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_ptr_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_srv_record
  - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_txt_record
  EOT
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to resources"
}
