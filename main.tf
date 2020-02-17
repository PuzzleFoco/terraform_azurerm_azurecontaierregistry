resource "azurerm_resource_group" "resource_group" {
    name        = var.resource_group_name
    location    = var.location
}

# ---------------------------------------------------------------------------------------------------------------------
# Container Registry
# ---------------------------------------------------------------------------------------------------------------------

resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled # username and password available by output variables
}