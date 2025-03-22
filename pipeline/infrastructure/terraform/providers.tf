terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }
    }

    backend "azurerm" {
        resource_group_name   = "terraform-state-rg"
        storage_account_name  = "terraformstatestorage905"
        container_name        = "terraform-state-container"
        key                   = "terraform.tfstate"
    }

}

provider "azurerm" {
    features {}
}