output "containerengine_addon_options_lookup_id" {
  description = "Map of id values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containerengine_addon_options_lookup_addon_name" {
  description = "Map of addon_name values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no addon_name are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.addon_name if v.addon_name != null && length(v.addon_name) > 0 }
}
output "containerengine_addon_options_lookup_addon_options" {
  description = "Map of addon_options values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no addon_options are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.addon_options if v.addon_options != null && length(v.addon_options) > 0 }
}
output "containerengine_addon_options_lookup_filter" {
  description = "Map of filter values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "containerengine_addon_options_lookup_kubernetes_version" {
  description = "Map of kubernetes_version values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no kubernetes_version are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "containerengine_addon_options_lookup_should_show_all_versions" {
  description = "Map of should_show_all_versions values across all containerengine_addon_options_lookup, keyed the same as var.containerengine_addon_options_lookup except keys with no should_show_all_versions are omitted"
  value       = { for k, v in data.oci_containerengine_addon_options.containerengine_addon_options_lookup : k => v.should_show_all_versions if v.should_show_all_versions != null }
}

