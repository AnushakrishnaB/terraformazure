resource "azurerm_dns_zone" "devopsb28com" {
  name                = "devopsb28.com"
  resource_group_name = azurerm_resource_group.devopsb28tf.name
}