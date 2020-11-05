resource "azuread_group" "new_groups" {
  for_each = var.aad_groups

  name        = each.value.name
  description = each.value.description
}


