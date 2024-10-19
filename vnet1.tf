resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1_name
  location            = var.location
  resource_group_name = azurerm_resource_group.devopsb28tf.name
  address_space       = [var.vnet_cidr_block]
  dns_servers         = [var.dns1, var.dns2]

  tags = {
    environment = var.environment
  }
}
resource "azurerm_subnet" "subnet-1" {
  name                 = var.subnet-1_name
  resource_group_name  = azurerm_resource_group.devopsb28tf.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet1_cidr]

}
resource "azurerm_subnet" "subnet-2" {
  name                 = var.subnet-2_name
  resource_group_name  = azurerm_resource_group.devopsb28tf.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet2_cidr]

}
resource "azurerm_subnet" "subnet-3" {
  name                 = var.subnet-3_name
  resource_group_name  = azurerm_resource_group.devopsb28tf.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet3_cidr]

}


