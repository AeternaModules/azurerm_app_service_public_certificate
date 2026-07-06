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
        length(v.certificate_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_public_certificate's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: certificate_location
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: blob
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
}

