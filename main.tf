locals {
  azure_users       = zipmap(var.azuread_user_names, var.azuread_user_ids)
  member_entity_ids = flatten(values(vault_identity_entity.azure_users)[*].id)
}

resource "vault_identity_entity" "azure_users" {
  for_each = local.azure_users

  name     = split("@", trimspace(each.key))[0]
  policies = var.policies

  metadata = {
    version = "2"
    email   = "${each.key}"
  }
}

resource "vault_identity_entity_alias" "user_alias" {
  for_each = local.azure_users

  name           = each.value
  mount_accessor = var.auth_method
  canonical_id   = vault_identity_entity.azure_users[each.key].id
}

resource "vault_identity_group_member_entity_ids" "test" {
  count             = length(var.vault_oidc_group_name)
  member_entity_ids = local.member_entity_ids
  exclusive         = true
  group_id          = var.vault_oidc_group_name[count.index]
}

