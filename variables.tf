variable "name" {
  description = "The name of azure container registry"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location where all resources in this example should be created"
  type        = string
}

variable "acr_sku" {
  description = "The value of the stock keeping unit (SKU) for azure container registry"
  default     = "Standard"
  /*
        available Values: https://docs.microsoft.com/de-de/azure/container-registry/container-registry-skus
    */
}

variable "acr_admin_enabled" {
  description = "The property to enable admin user for container registry"
  default     = true
}