# Linux App Service
resource "azurerm_linux_web_app" "linuxlabas" {
  #for_each = linux_as_data

  name                = "${var.env}-linuxas"
  resource_group_name = azurerm_resource_group.aserg.name
  location            = azurerm_service_plan.linuxlabasp.location
  service_plan_id     = azurerm_service_plan.linuxlabasp.id

  site_config {}

  depends_on = [
    azurerm_service_plan.linuxlabasp
  ]
}

#resource "azurerm_app_service_custom_hostname_binding" "linuxlabhostname" {
#  hostname            = "${azurerm_linux_web_app.linuxlabas.name}.${azurerm_app_service_environment_v3.labase.dns_suffix}"
#  app_service_name    = azurerm_linux_web_app.linuxlabas.name
#  resource_group_name = azurerm_resource_group.aserg.name
#
#  depends_on = [
#    azurerm_linux_web_app.linuxlabas
#  ]
#}

resource "azurerm_linux_web_app_slot" "linuxlabdevslot" {
  name           = "dev"
  app_service_id = azurerm_linux_web_app.linuxlabas.id

  site_config {}

  depends_on = [
    azurerm_linux_web_app.linuxlabas
  ]
}

resource "azurerm_linux_web_app_slot" "linuxlabstageslot" {
  name           = "stage"
  app_service_id = azurerm_linux_web_app.linuxlabas.id

  site_config {}

  depends_on = [
    azurerm_linux_web_app.linuxlabas
  ]
}

resource "azurerm_linux_web_app_slot" "linuxlabmainslot" {
  name           = "main"
  app_service_id = azurerm_linux_web_app.linuxlabas.id

  site_config {}

  depends_on = [
    azurerm_linux_web_app.linuxlabas
  ]
}

#resource "azurerm_app_service_slot_custom_hostname_binding" "linuxlabdevslothostname" {
#  app_service_slot_id = azurerm_linux_web_app_slot.linuxlabdevslot.id
#  hostname            = "${azurerm_linux_web_app_slot.linuxlabdevslot.name}.${azurerm_app_service_custom_hostname_binding.linuxlabhostname}"

#  depends_on = [
#    azurerm_linux_web_app_slot.linuxlabdevslot
#  ]
#}

#resource "azurerm_app_service_slot_custom_hostname_binding" "linuxlabstageslothostname" {
#  app_service_slot_id = azurerm_linux_web_app_slot.linuxlabstageslot.id
#  hostname            = "${azurerm_linux_web_app_slot.linuxlabstageslot.name}.${azurerm_app_service_custom_hostname_binding.linuxlabhostname}"
#
#  depends_on = [
#    azurerm_linux_web_app_slot.linuxlabstageslot
#  ]
#}

#resource "azurerm_app_service_slot_custom_hostname_binding" "linuxlabmainslothostname" {
#  app_service_slot_id = azurerm_linux_web_app_slot.linuxlabmainslot.id
#  hostname            = "${azurerm_linux_web_app_slot.linuxlabmainslot.name}.${azurerm_app_service_custom_hostname_binding.linuxlabhostname}"
#
#  depends_on = [
#    azurerm_linux_web_app_slot.linuxlabmainslot
#  ]
#}

# Windows App Service
resource "azurerm_windows_web_app" "windowslabas" {
  #for_each = windows_as_data

  name                = "${var.env}-windowsas"
  resource_group_name = azurerm_resource_group.aserg.name
  location            = azurerm_service_plan.windowslabasp.location
  service_plan_id     = azurerm_service_plan.windowslabasp.id

  site_config {}

  depends_on = [
    azurerm_service_plan.windowslabasp
  ]
}

#resource "azurerm_app_service_custom_hostname_binding" "windowslabhostname" {
#  hostname            = "${azurerm_windows_web_app.windowslabas.name}.${azurerm_app_service_environment_v3.labase.dns_suffix}"
#  app_service_name    = azurerm_windows_web_app.windowslabas.name
#  resource_group_name = azurerm_resource_group.aserg.name
#
#  depends_on = [
#    azurerm_windows_web_app.windowslabas
#  ]
#}

resource "azurerm_windows_web_app_slot" "windowslabdevslot" {
  name           = "dev"
  app_service_id = azurerm_windows_web_app.windowslabas.id

  site_config {}

  depends_on = [
    azurerm_windows_web_app.windowslabas
  ]
}

resource "azurerm_windows_web_app_slot" "windowslabstageslot" {
  name           = "stage"
  app_service_id = azurerm_windows_web_app.windowslabas.id

  site_config {}

  depends_on = [
    azurerm_windows_web_app.windowslabas
  ]
}

resource "azurerm_windows_web_app_slot" "windowslabmainslot" {
  name           = "main"
  app_service_id = azurerm_windows_web_app.windowslabas.id

  site_config {}

  depends_on = [
    azurerm_windows_web_app.windowslabas
  ]
}

#resource "azurerm_app_service_slot_custom_hostname_binding" "windowslabdevslothostname" {
#  app_service_slot_id = azurerm_windows_web_app_slot.windowslabdevslot.id
#  hostname            = "${azurerm_windows_web_app_slot.windowslabdevslot.name}.${azurerm_app_service_custom_hostname_binding.windowslabhostname}"
#
#  depends_on = [
#    azurerm_windows_web_app_slot.windowslabdevslot
#  ]
#}

#resource "azurerm_app_service_slot_custom_hostname_binding" "windowslabstageslothostname" {
#  app_service_slot_id = azurerm_windows_web_app_slot.windowslabstageslot.id
#  hostname            = "${azurerm_windows_web_app_slot.windowslabstageslot.name}.${azurerm_app_service_custom_hostname_binding.windowslabhostname}"
#
#  depends_on = [
#    azurerm_windows_web_app_slot.windowslabstageslot
#  ]
#}

#resource "azurerm_app_service_slot_custom_hostname_binding" "windowslabmainslothostname" {
#  app_service_slot_id = azurerm_windows_web_app_slot.windowslabmainslot.id
#  hostname            = "${azurerm_windows_web_app_slot.windowslabmainslot.name}.${azurerm_app_service_custom_hostname_binding.windowslabhostname}"
#
#  depends_on = [
#    azurerm_windows_web_app_slot.windowslabmainslot
#  ]
#}