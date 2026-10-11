resource "coder_ai_task" "ai_tasks" {
  for_each = var.ai_tasks

  app_id = each.value.app_id

  dynamic "sidebar_app" {
    for_each = each.value.sidebar_app != null ? [each.value.sidebar_app] : []
    content {
      id = sidebar_app.value.id
    }
  }
}

