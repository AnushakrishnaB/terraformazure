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
resource "azurerm_subnet" "subnet-1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.28.1.0/24"]

}
resource "azurerm_subnet" "subnet-2" {
  name                 = "subnet-2"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.28.2.0/24"]

}

resource "azurerm_subnet" "subnet-3" {
  name                 = "subnet-3"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.29.1.0/24"]

}
resource "azurerm_subnet" "subnet-4" {
  name                 = "subnet-4"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.29.2.0/24"]

}

resource "azurerm_subnet" "subnet-5" {
  name                 = "subnet-5"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.29.3.0/24"]

}

resource "azurerm_subnet" "subnet-6" {
  name                 = "subnet-6"
  resource_group_name  = azurerm_resource_group.devopsb28rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.29.4.0/24"]

}
