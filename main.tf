resource "azurerm_resource_group" "rg" {
 name   = var.rg_name
 location = var.location 
}

module "storage_ac" {
    source = "./modules/storage_ac"
    resource_group_name = azurerm_resource_group.rg.name
    
}