resource "azurerm_dns_zone" "devopsb28com" {
  name                = "devopsb28.com"
  resource_group_name = azurerm_resource_group.devopsb28tf.name
}

resource "azurerm_dns_a_record" "testserver1" {
  name                = "testserver1"
  zone_name           = azurerm_dns_zone.devopsb28com.name
  resource_group_name = azurerm_resource_group.devopsb28tf.name
  ttl                 = 300
  records             = ["10.1.1.100"]
}