variable "dns_aaaa_records" {
  description = <<EOT
Map of dns_aaaa_records, attributes below
Required:
    - name
    - resource_group_name
    - ttl
    - zone_name
Optional:
    - records
    - tags
    - target_resource_id
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    ttl                 = number
    zone_name           = string
    records             = optional(set(string))
    tags                = optional(map(string))
    target_resource_id  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dns_aaaa_records : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dns_aaaa_records : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dns_aaaa_records : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dns_aaaa_records : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

