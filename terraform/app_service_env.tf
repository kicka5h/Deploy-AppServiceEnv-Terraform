resource "azurerm_app_service_environment_v3" "labase" {
  #for_each = var.ase_data

  name                = "${var.env}-linuxasev3"
  resource_group_name = azurerm_resource_group.aserg.name
  subnet_id           = azurerm_subnet.asevnetsubnet1.id
  internal_load_balancing_mode = "Web, Publishing"

  tags = {
    env         = "lab"
    terraformed = "true"
  }

  depends_on = [
    azurerm_subnet.asevnetsubnet1
  ]
}