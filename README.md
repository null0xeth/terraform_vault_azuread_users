<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~>2.53.1 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 4.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_identity_entity.azure_users](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_entity) | resource |
| [vault_identity_entity_alias.user_alias](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_entity_alias) | resource |
| [vault_identity_group_member_entity_ids.test](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_group_member_entity_ids) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_method"></a> [auth\_method](#input\_auth\_method) | The path of the auth method to attach the group alias to. Default to 'token'. | `string` | `"oidc"` | no |
| <a name="input_azuread_user_ids"></a> [azuread\_user\_ids](#input\_azuread\_user\_ids) | SYSTEM GENERATED: list with object IDs of users in AzureAD | `list(string)` | `null` | no |
| <a name="input_azuread_user_names"></a> [azuread\_user\_names](#input\_azuread\_user\_names) | SYSTEM GENERATED: list with names of users in AzureAD | `list(string)` | `null` | no |
| <a name="input_policies"></a> [policies](#input\_policies) | A list of HashiCorp Vault policies to attach to Azure Groups. | `list(string)` | <pre>[<br>  "admin"<br>]</pre> | no |
| <a name="input_vault_oidc_group_name"></a> [vault\_oidc\_group\_name](#input\_vault\_oidc\_group\_name) | Vault group to assign the created entities to | `list(string)` | <pre>[<br>  "admin-internal"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_users_map"></a> [azure\_users\_map](#output\_azure\_users\_map) | Map of Azure AD user display names to Object IDs. |
<!-- END_TF_DOCS -->