data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vault_nonProd" {
  name = "AZKLTSOAN0001"  
  location            = azurerm_resource_group.rg-dev-nonprod.location
  resource_group_name = azurerm_resource_group.rg-dev-nonprod.name
  enabled_for_disk_encryption = false
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90
  purge_protection_enabled   = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
  tags = merge(local.Common_tags, local.nonprod_tags)
}