container_registry_sku = "Standard"
env = "lab"
tags = {
  Environment  = "lab"
}
ase_vnet_address_space = ["10.12.0.0/16"]
ase_vnet_dns_servers = null
ase_vnet_subnet1_address_prefix = ["10.12.2.0/24"]
ase_data = {
  ase_lab = {
    ase_name = "lab-asev3"
  }
}

linux_as_data = {
  as_lab = {
    linuxas_name = "lab-linuxas"
  }
}

windows_as_data = {
  as_lab = {
    windowsas_name = "lab-windowsas"
  }
}
