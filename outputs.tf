output "service_accounts_id" {
  description = "Map of id values across all service_accounts, keyed the same as var.service_accounts except keys with no id are omitted"
  value       = { for k, v in confluent_service_account.service_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_accounts_api_version" {
  description = "Map of api_version values across all service_accounts, keyed the same as var.service_accounts except keys with no api_version are omitted"
  value       = { for k, v in confluent_service_account.service_accounts : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "service_accounts_description" {
  description = "Map of description values across all service_accounts, keyed the same as var.service_accounts except keys with no description are omitted"
  value       = { for k, v in confluent_service_account.service_accounts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "service_accounts_display_name" {
  description = "Map of display_name values across all service_accounts, keyed the same as var.service_accounts except keys with no display_name are omitted"
  value       = { for k, v in confluent_service_account.service_accounts : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "service_accounts_kind" {
  description = "Map of kind values across all service_accounts, keyed the same as var.service_accounts except keys with no kind are omitted"
  value       = { for k, v in confluent_service_account.service_accounts : k => v.kind if v.kind != null && length(v.kind) > 0 }
}

