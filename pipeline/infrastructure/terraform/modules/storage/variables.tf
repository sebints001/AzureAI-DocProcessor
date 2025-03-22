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
variable "location" {
  description = "The location of the storage account"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the storage account will be created"
  type        = string
}
variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
    default = "dev"
}