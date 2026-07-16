output "app_service_public_certificates_id" {
  description = "Map of id values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_public_certificates_app_service_name" {
  description = "Map of app_service_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.app_service_name if v.app_service_name != null && length(v.app_service_name) > 0 }
}
output "app_service_public_certificates_blob" {
  description = "Map of blob values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.blob if v.blob != null && length(v.blob) > 0 }
}
output "app_service_public_certificates_certificate_location" {
  description = "Map of certificate_location values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.certificate_location if v.certificate_location != null && length(v.certificate_location) > 0 }
}
output "app_service_public_certificates_certificate_name" {
  description = "Map of certificate_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.certificate_name if v.certificate_name != null && length(v.certificate_name) > 0 }
}
output "app_service_public_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "app_service_public_certificates_thumbprint" {
  description = "Map of thumbprint values across all app_service_public_certificates, keyed the same as var.app_service_public_certificates"
  value       = { for k, v in azurerm_app_service_public_certificate.app_service_public_certificates : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}

