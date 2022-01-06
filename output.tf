output "vnt-dev-nonprod" {
  value = azurerm_virtual_network.vnt-dev-nonprod.name
}

output "rg-dev-nonprod" {
  value = azurerm_resource_group.rg-dev-nonprod.name
}

output "dns-dev-nonprod" {
  value = azurerm_private_dns_zone.private-dns-zone.id
}
