output "ai_tasks_id" {
  description = "Map of id values across all ai_tasks, keyed the same as var.ai_tasks except keys with no id are omitted"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_tasks_app_id" {
  description = "Map of app_id values across all ai_tasks, keyed the same as var.ai_tasks except keys with no app_id are omitted"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "ai_tasks_enabled" {
  description = "Map of enabled values across all ai_tasks, keyed the same as var.ai_tasks except keys with no enabled are omitted"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.enabled if v.enabled != null }
}
output "ai_tasks_prompt" {
  description = "Map of prompt values across all ai_tasks, keyed the same as var.ai_tasks except keys with no prompt are omitted"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.prompt if v.prompt != null && length(v.prompt) > 0 }
}
output "ai_tasks_sidebar_app" {
  description = "Map of sidebar_app values across all ai_tasks, keyed the same as var.ai_tasks except keys with no sidebar_app are omitted"
  value       = { for k, v in coder_ai_task.ai_tasks : k => one(v.sidebar_app) if v.sidebar_app != null && length(v.sidebar_app) > 0 }
}

