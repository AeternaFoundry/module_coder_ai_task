output "ai_tasks_id" {
  description = "Map of id values across all ai_tasks, keyed the same as var.ai_tasks"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.id }
}
output "ai_tasks_app_id" {
  description = "Map of app_id values across all ai_tasks, keyed the same as var.ai_tasks"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.app_id }
}
output "ai_tasks_enabled" {
  description = "Map of enabled values across all ai_tasks, keyed the same as var.ai_tasks"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.enabled }
}
output "ai_tasks_prompt" {
  description = "Map of prompt values across all ai_tasks, keyed the same as var.ai_tasks"
  value       = { for k, v in coder_ai_task.ai_tasks : k => v.prompt }
}
output "ai_tasks_sidebar_app" {
  description = "Map of sidebar_app values across all ai_tasks, keyed the same as var.ai_tasks"
  value       = { for k, v in coder_ai_task.ai_tasks : k => one(v.sidebar_app) }
}

