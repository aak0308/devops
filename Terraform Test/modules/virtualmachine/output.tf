output "vm_ip" {
    value = azurerm_network_interface.nic.private_ip_address
}

output "vm_name" {
    value = azurerm_virtual_machine.vm.name
}

output "vm_size" {
    value = azurerm_virtual_machine.vm.vm_size
}