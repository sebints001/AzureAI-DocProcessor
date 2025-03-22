module "resource_group" {
  source   = "../resource_group"
  resource_group_name  = var.resource_group_name
  location = var.location
  environment = var.environment
}


resource "azurerm_storage_account" "storage" {
  name                     = var.storage_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  depends_on = [module.resource_group] 
}   