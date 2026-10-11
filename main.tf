data "oci_data_safe_audit_trails" "data_safe_audit_trails_lookup" {
  for_each = var.data_safe_audit_trails_lookup

  compartment_id            = each.value.compartment_id
  access_level              = each.value.access_level
  audit_trail_id            = each.value.audit_trail_id
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  display_name              = each.value.display_name
  state                     = each.value.state
  status                    = each.value.status
  target_database_group_id  = each.value.target_database_group_id
  target_id                 = each.value.target_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

