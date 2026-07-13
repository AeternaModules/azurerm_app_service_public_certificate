variable "app_service_public_certificates" {
  description = <<EOT
Map of app_service_public_certificates, attributes below
Required:
    - app_service_name
    - blob
    - certificate_location
    - certificate_name
    - resource_group_name
EOT

  type = map(object({
    app_service_name     = string
    blob                 = string
    certificate_location = string
    certificate_name     = string
    resource_group_name  = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_service_public_certificates : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_public_certificates : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_public_certificates : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_public_certificates : (
        length(v.certificate_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_public_certificates : (
        can(base64decode(v.blob))
      )
    ])
    error_message = "must be valid base64"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

