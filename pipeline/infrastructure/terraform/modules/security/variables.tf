variable "keyvault_name" {
  description = "The name of the key vault"
  type        = string
}
variable "sku_name" {
  description = "The SKU of the key vault"
  type        = string
  default = "standard"
}
variable "location" {
  description = "The location of the key vault"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the key vault will be created"
  type        = string
}
variable "tenant_id" {
  description = "The tenant ID of the key vault"
  type        = string
}   
variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
    default = "dev"
}