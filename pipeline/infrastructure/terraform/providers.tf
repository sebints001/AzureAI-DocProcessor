terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }
    }

    backend "azurerm" {
        resource_group_name   = var.tfstate_rgname
        storage_account_name  = var.tfstate_storageaccname
        container_name        = var.tfstate_containername
        key                   = var.tfstate_storagekey
    }

}

provider "azurerm" {
    features {}
}