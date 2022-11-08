# App Service Container Registry
resource "azurerm_container_registry" "labacr" {
  name                      = "${var.env}ascr"
  resource_group_name       = azurerm_resource_group.aserg.name
  location                  = azurerm_resource_group.aserg.location
  sku                       = var.container_registry_sku
  admin_enabled             = true
  tags                      = var.tags
}