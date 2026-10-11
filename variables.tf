variable "shield_protection_groups" {
  description = <<EOT
Map of shield_protection_groups, attributes below
Required:
    - aggregation
    - pattern
    - protection_group_id
Optional:
    - members
    - resource_type
    - tags
    - tags_all
EOT

  type = map(object({
    aggregation         = string
    pattern             = string
    protection_group_id = string
    members             = optional(list(string))
    resource_type       = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.shield_protection_groups : (
        length(v.protection_group_id) >= 1 && length(v.protection_group_id) <= 36
      )
    ])
    error_message = "must be between 1 and 36 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

