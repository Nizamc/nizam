resource "azurerm_user_assigned_identity" "sqlsvr_sit" {
  resource_group_name = azurerm_resource_group.rg-dev-db.name
  location            = azurerm_resource_group.rg-dev-db.location

  name = "sqlsvr_sit"
  ####1111####
}