# App Service Virtual network
resource "azurerm_virtual_network" "labasevnet" {
  name                = "${var.env}-asevnet"
  resource_group_name = azurerm_resource_group.aserg.name
  location            = azurerm_resource_group.aserg.location
  address_space       = var.ase_vnet_address_space
  tags                = var.tags
  dns_servers         = var.ase_vnet_dns_servers
}

# App Service Virtual network subnets data
resource "azurerm_subnet" "asevnetsubnet1" {
  name                                            = "${var.env}Subnet1"
  virtual_network_name                            = azurerm_virtual_network.labasevnet.name
  resource_group_name                             = azurerm_virtual_network.labasevnet.resource_group_name
  address_prefixes                                = var.ase_vnet_subnet1_address_prefix
  
  delegation {
    name = "Microsoft.Web.hostingEnvironments"
    service_delegation {
      name    = "Microsoft.Web/hostingEnvironments"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }

  depends_on = [
    azurerm_virtual_network.labasevnet
  ]
}