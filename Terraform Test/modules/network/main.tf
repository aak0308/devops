resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  security_rule = [ {
    access = "Allow"
    description = "open ports"
    destination_address_prefix = "*"
    destination_port_ranges = [ "80","443" ]
    direction = "Inbound"
    name = azurerm_network_security_group.nsg.name
    priority = 300
    protocol = "TCP"
    source_address_prefix = "*"
    source_port_range = "*"
  } ]
}

resource "azurerm_network_ddos_protection_plan" "nsg_ddos" {
  name                = var.ddos_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space

  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.nsg_ddos.id
    enable = true
  }
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet1_address_space    
}

resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet2_address_space
    
}
