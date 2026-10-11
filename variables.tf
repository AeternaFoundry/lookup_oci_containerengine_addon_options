variable "containerengine_addon_options_lookup" {
  description = <<EOT
Map of containerengine_addon_options_lookup, attributes below
Required:
    - kubernetes_version
Optional:
    - addon_name
    - should_show_all_versions
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    kubernetes_version       = string
    addon_name               = optional(string)
    should_show_all_versions = optional(bool)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

