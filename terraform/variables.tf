variable "container_registry_georeplication_location" {
  description = "Container registry geoeplication location"
  type = list(string)
  default = null
}

variable "container_registry_sku" {
  description = "Container registry SKU"
  default = "Standard"
}

variable "env" {
  description = "Environment name"
  default = "lab"
}

variable "location" {
  description = "Resource location"
  default = "westus"
}

variable "tags" {
  description = "Default tags to apply to resources"
  type = map
  default = {
    Environment  = "lab"
    Application = "ASE"
  }
}

variable "ase_vnet_address_space" {
  description = "VNet address space"
  type = list(string)
  default = ["10.12.0.0/16"]
}

variable "ase_vnet_dns_servers" {
  description = "VNet DNS Servers"
  type = list(string)
  default = [""]
}

variable "ase_vnet_subnet1_address_prefix" {
  description = "VNet Subnet1 subnet address prefix"
  type = list(string)
  default = ["10.12.2.0/24"]
}

variable "ase_data" {
  description = "App service environment data"
	type = map(object({
		ase_name = string
	}))
}

variable "linux_as_data" {
  description = "Linux App service data"
	type = map(object({
		linuxas_name = string
	}))
}

variable "windows_as_data" {
  description = "Windows App service data"
	type = map(object({
		windowsas_name = string
	}))
}

variable "asevnetsubnet1" {
  description = "subnet"
  default = ""
}