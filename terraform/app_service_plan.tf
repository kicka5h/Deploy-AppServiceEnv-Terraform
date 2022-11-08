resource "azurerm_service_plan" "linuxlabasp" {
  app_service_environment_id  = azurerm_app_service_environment_v3.labase.id
  name                        = "${var.env}-linuxasp"
  os_type                     = "Linux"
  location                    = azurerm_resource_group.aserg.location
  resource_group_name         = azurerm_resource_group.aserg.name
  sku_name                    = "I1v2"

  depends_on = [
    azurerm_app_service_environment_v3.labase
  ]
}

resource "azurerm_service_plan" "windowslabasp" {
  app_service_environment_id  = azurerm_app_service_environment_v3.labase.id
  name                        = "${var.env}-windowsasp"
  os_type                     = "Windows"
  location                    = azurerm_resource_group.aserg.location
  resource_group_name         = azurerm_resource_group.aserg.name
  sku_name                    = "I1v2"

  depends_on = [
    azurerm_app_service_environment_v3.labase
  ]
}