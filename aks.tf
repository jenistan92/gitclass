resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.name}-aks"
  dns_prefix = "${var.name}dns"
  location            = azurerm_resource_group.rg_shop.location
  resource_group_name = azurerm_resource_group.rg_shop.name
default_node_pool {
    name       = "default"
    vm_size    = "Standard_B2S"
    node_count = 1
  }
  identity {
    type = "SystemAssigned"
  }
}