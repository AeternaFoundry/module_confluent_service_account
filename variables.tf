variable "service_accounts" {
  description = <<EOT
Map of service_accounts, attributes below
Required:
    - display_name
Optional:
    - description
EOT

  type = map(object({
    display_name = string
    description  = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

