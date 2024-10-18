resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1"
  location            = azurerm_resource_group.devopsb28rg1.location
  resource_group_name = azurerm_resource_group.devopsb28rg1.name
  address_space       = ["10.28.0.0/16", "10.29.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]

  tags = {
    environment = "Development"
  }
}
