output "id" {
    value = azurerm_network_security_group.nsg.id
}

output "vnet_name" {
    value = azurerm_virtual_network.vnet.name
}

output "subnets" {
    value = azurerm_virtual_network.vnet.subnet
}

output "vnet_address_space" {
    value = azurerm_virtual_network.vnet.address_space
}
