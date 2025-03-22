resource "azurerm_cognitive_account" "openai" {
  name                = var.openai_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = var.sku_name
  kind                = var.kind
}