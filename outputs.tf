output "app_service_public_certificates_id" {
  description = "Map of id values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.id }
}
output "app_service_public_certificates_app_service_name" {
  description = "Map of app_service_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.app_service_name }
}
output "app_service_public_certificates_blob" {
  description = "Map of blob values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.blob }
}
output "app_service_public_certificates_certificate_location" {
  description = "Map of certificate_location values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.certificate_location }
}
output "app_service_public_certificates_certificate_name" {
  description = "Map of certificate_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.certificate_name }
}
output "app_service_public_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.resource_group_name }
}
output "app_service_public_certificates_thumbprint" {
  description = "Map of thumbprint values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.thumbprint }
}

