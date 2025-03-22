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
variable "environment" {
    description = "The environment in which the resources will be created"
    type        = string
    default = "dev"
}