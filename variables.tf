variable "ai_tasks" {
  description = <<EOT
Map of ai_tasks, attributes below
Optional:
    - app_id
    - sidebar_app (block):
        - id (required)
EOT

  type = map(object({
    app_id = optional(string)
    sidebar_app = optional(object({
      id = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ai_tasks : (
        v.sidebar_app == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.sidebar_app.id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_tasks : (
        v.app_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.app_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

