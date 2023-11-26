output "resource" {
  value       = azurerm_private_dns_zone.this
  description = "Private DNS Zone resource"
}

output "a" {
  value       = azurerm_private_dns_a_record.this
  description = "Azure Private DNS A records"

}

output "aaaa" {
  value       = azurerm_private_dns_aaaa_record.this
  description = "Azure Private DNS AAAA records"
}

output "cname" {
  value       = azurerm_private_dns_cname_record.this
  description = "Azure Private DNS CNAME records"
}

output "mx" {
  value       = azurerm_private_dns_mx_record.this
  description = "Azure Private DNS MX records"
}

output "ptr" {
  value       = azurerm_private_dns_ptr_record.this
  description = "Azure Private DNS PTR records"
}

output "srv" {
  value       = azurerm_private_dns_srv_record.this
  description = "Azure Private DNS SRV records"
}

output "txt" {
  value       = azurerm_private_dns_txt_record.this
  description = "Azure Private DNS TXT records"
}
