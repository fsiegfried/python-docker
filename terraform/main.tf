resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
}

resource "azurerm_container_registry" "acr" {
  name                = "registryApp2"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = "Standard"
}