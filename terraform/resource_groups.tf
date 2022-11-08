resource "azurerm_resource_group" "aserg" {
  name                      = "Lab-ASERG"
  location                  = var.location
  tags                      = var.tags
}