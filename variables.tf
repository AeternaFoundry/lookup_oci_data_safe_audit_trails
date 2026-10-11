variable "data_safe_audit_trails_lookup" {
  description = <<EOT
Map of data_safe_audit_trails_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - audit_trail_id
    - compartment_id_in_subtree
    - display_name
    - state
    - status
    - target_database_group_id
    - target_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    access_level              = optional(string)
    audit_trail_id            = optional(string)
    compartment_id_in_subtree = optional(bool)
    display_name              = optional(string)
    state                     = optional(string)
    status                    = optional(string)
    target_database_group_id  = optional(string)
    target_id                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

