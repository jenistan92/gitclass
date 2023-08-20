resource "azurerm_resource_group" "rg_shop" {
  name     = var.name
  location = var.location
}

resource "azurerm_container_registry" "acr_shop" {
  name                = var.name
  resource_group_name = azurerm_resource_group.rg_shop.name
  location            = azurerm_resource_group.rg_shop.location
  sku                 = var.sku
}