resource "azurerm_storage_account" "devopsb28sgaccounts" {
  count                    = 3
  name                     = "devopsb28sgaccount0${count.index + 1}"
  resource_group_name      = azurerm_resource_group.devopsb28tf.name
  location                 = azurerm_resource_group.devopsb28tf.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
}


