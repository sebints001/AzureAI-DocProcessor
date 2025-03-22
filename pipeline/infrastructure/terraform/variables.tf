variable "openai_name" {
    description = "The name of the OpenAI cognitive service account"
    type        = string
}

variable "sku_name" {
    description = "The SKU of the OpenAI cognitive service account"
    type        = string
}

variable "kind" {
    description = "The kind of the OpenAI cognitive service account"
    type        = string
    default = "OpenAI"
}

variable "location" {
    description = "The location of the OpenAI cognitive service account"
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which the OpenAI cognitive service account will be created"
    type        = string
}

variable "keyvault_name" {
    description = "The name of the key vault"
    type        = string
}

variable "tenant_id" {
    description = "The tenant ID of the key vault"
    type        = string
}

variable "storage_name" {
    description = "The name of the storage account"
    type        = string
}

variable "account_tier" {
    description = "The tier of the storage account"
    type        = string
    default = "Standard"
}

variable "account_replication_type" {
    description = "The replication type of the storage account"
    type        = string
}

variable "keyvault_sku_name" {
    description = "The SKU of the key vault"
    type        = string
    default = "standard"
}

variable "openai_sku_name" {
    description = "The SKU of the open ai account"
    type        = string
}

variable "storage_account_name" {
    description = "The name of the storage account"
    type        = string
}

variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
}


