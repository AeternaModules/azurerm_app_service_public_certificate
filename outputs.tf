output "app_service_public_certificates" {
  description = "All app_service_public_certificate resources"
  value       = azurerm_app_service_public_certificate.app_service_public_certificates
}
output "app_service_public_certificates_app_service_name" {
  description = "List of app_service_name values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.app_service_name]
}
output "app_service_public_certificates_blob" {
  description = "List of blob values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.blob]
}
output "app_service_public_certificates_certificate_location" {
  description = "List of certificate_location values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.certificate_location]
}
output "app_service_public_certificates_certificate_name" {
  description = "List of certificate_name values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.certificate_name]
}
output "app_service_public_certificates_resource_group_name" {
  description = "List of resource_group_name values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.resource_group_name]
}
output "app_service_public_certificates_thumbprint" {
  description = "List of thumbprint values across all app_service_public_certificates"
  value       = [for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : v.thumbprint]
}

