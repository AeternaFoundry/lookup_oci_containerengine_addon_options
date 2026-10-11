data "oci_containerengine_addon_options" "containerengine_addon_options_lookup" {
  for_each = var.containerengine_addon_options_lookup

  kubernetes_version       = each.value.kubernetes_version
  addon_name               = each.value.addon_name
  should_show_all_versions = each.value.should_show_all_versions

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

