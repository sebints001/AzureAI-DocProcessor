module "resource_group" {
  source   = "../resource_group"
  resource_group_name  = var.resource_group_name
  location = var.location
  environment = var.environment
}


resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    resource_group_name = module.resource_group.resource_group_name
    location            = var.location
    address_space       = var.address_space

    depends_on = [module.resource_group] 
}