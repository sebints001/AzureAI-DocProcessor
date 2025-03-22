variable "openai_name" {
    description = "The name of the OpenAI cognitive service account"
    type        = string
    default = "my_openai_account"
}

variable "openai_sku_name" {
    description = "The SKU of the OpenAI cognitive service account"
    type        = string
    default = "S0"
}

variable "kind" {
    description = "The kind of the OpenAI cognitive service account"
    type        = string
    default = "OpenAI"
}

variable "location" {
    description = "The location of the OpenAI cognitive service account"
    type        = string
    default = "eastus"
}

variable "resource_group_name" {
    description = "The name of the resource group in which the OpenAI cognitive service account will be created"
    type        = string
    default = "my_ai_rg"
}

variable "keyvault_name" {
    description = "The name of the key vault"
    type        = string
    default = "openaikeyvault001"
}

variable "tenant_id" {
    description = "The tenant ID of the key vault"
    type        = string
    default = "78db45e4-df35-4c0a-bb64-2edcf249bb66"
}

variable "account_tier" {
    description = "The tier of the storage account"
    type        = string
    default = "Standard"
}

variable "account_replication_type" {
    description = "The replication type of the storage account"
    type        = string
    default = "LRS"
}

variable "keyvault_sku_name" {
    description = "The SKU of the key vault"
    type        = string
    default = "standard"
}

variable "storage_account_name" {
    description = "The name of the storage account"
    type        = string
    default = "openaistorage905"
}

variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
    default = "dev"
}


