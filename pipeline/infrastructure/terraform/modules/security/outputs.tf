output "keyvault_uri" {
  description = "The URI of the key vault"
  value       = azurerm_key_vault.keyvault.vault_uri 
}