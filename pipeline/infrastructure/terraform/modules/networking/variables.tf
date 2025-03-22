variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string      
  
}
variable "address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}
variable "location" {
  description = "The location of the virtual network"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the virtual network will be created"
  type        = string
}
variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
    default = "dev"
}