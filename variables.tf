variable "azuread_user_names" {
  type        = list(string)
  default     = null
  description = "SYSTEM GENERATED: list with names of users in AzureAD"
}

variable "azuread_user_ids" {
  type        = list(string)
  default     = null
  description = "SYSTEM GENERATED: list with object IDs of users in AzureAD"
}

variable "policies" {
  type        = list(string)
  default     = ["admin"]
  description = "A list of HashiCorp Vault policies to attach to Azure Groups."
}

variable "auth_method" {
  type        = string
  default     = "oidc"
  description = "The path of the auth method to attach the group alias to. Default to 'token'."
}

variable "vault_oidc_group_name" {
  description = "Vault group to assign the created entities to"
  type        = list(string)
  default     = ["admin-internal"]
}
