output "dns_aaaa_records" {
  description = "All dns_aaaa_record resources"
  value       = azurerm_dns_aaaa_record.dns_aaaa_records
}
output "dns_aaaa_records_fqdn" {
  description = "List of fqdn values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.fqdn]
}
output "dns_aaaa_records_name" {
  description = "List of name values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.name]
}
output "dns_aaaa_records_records" {
  description = "List of records values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.records]
}
output "dns_aaaa_records_resource_group_name" {
  description = "List of resource_group_name values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.resource_group_name]
}
output "dns_aaaa_records_tags" {
  description = "List of tags values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.tags]
}
output "dns_aaaa_records_target_resource_id" {
  description = "List of target_resource_id values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.target_resource_id]
}
output "dns_aaaa_records_ttl" {
  description = "List of ttl values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.ttl]
}
output "dns_aaaa_records_zone_name" {
  description = "List of zone_name values across all dns_aaaa_records"
  value       = [for k, v in azurerm_dns_aaaa_record.dns_aaaa_records : v.zone_name]
}

