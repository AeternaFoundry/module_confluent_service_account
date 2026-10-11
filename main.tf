resource "confluent_service_account" "service_accounts" {
  for_each = var.service_accounts

  display_name = each.value.display_name
  description  = each.value.description
}

