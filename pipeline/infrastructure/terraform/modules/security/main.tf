resource "azurerm_key_vault" "keyvault" {
    name                = var.keyvault_name
    resource_group_name = var.resource_group_name
    location            = var.location
    sku_name            = var.sku_name  
    tenant_id           = var.tenant_id
}