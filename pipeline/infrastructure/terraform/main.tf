module "resource_group" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location = var.location   
  environment = var.environment
}

module "openai" {
  source = "./modules/openai"
  openai_name = var.openai_name
  sku_name = var.openai_sku_name
  kind = var.kind
  location = var.location
  resource_group_name = var.resource_group_name 
}

module "security" {
  source = "./modules/security"
  keyvault_name = var.keyvault_name
  resource_group_name = var.resource_group_name
  sku_name = var.keyvault_sku_name
  location = var.location
  tenant_id = var.tenant_id
}   

module "storage" {
  source = "./modules/storage"
  storage_name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}