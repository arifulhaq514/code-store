output "postgresql_fqdn" {
  value = azurerm_postgresql_flexible_server.postgres.fqdn
}

output "private_dns_zone" {
  value = azurerm_private_dns_zone.dns.name
}
