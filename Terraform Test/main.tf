resource "azurerm_resource_group" "rg" {
 name   = var.rg_name
 location = var.location 
}

module "storage_ac" {
    source = "./modules/storage_ac"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}

module "network" {
    source = "./modules/network"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    vnetname               = var.vnetname
    subnet1                = var.subnet1
    subnet2                = var.subnet2
    vnet_address_space     = var.vnet_address_space
    subnet1_address_space  = var.subnet1_address_space
    subnet2_address_space  = var.subnet2_address_space
    nsg_name               = var.nsg_name
    ddos_plan_name         = var.ddos_plan_name
}

module "virtualmachine" {
    source = "./modules/virtualmachine"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    vm_name = var.vm_name
    vm_size = var.vm_size
    admin_password = "${data.azurerm_key_vault_secret.mySecret.value}"    
}