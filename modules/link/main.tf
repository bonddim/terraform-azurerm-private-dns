

resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  for_each = var.virtual_network_ids

  name                  = each.key
  private_dns_zone_name = var.private_dns_zone_name
  resource_group_name   = var.resource_group_name
  virtual_network_id    = each.value
  tags                  = var.tags
}
