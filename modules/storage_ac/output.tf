output "storage_ac_id" {
    value = azurerm_storage_account.storage_ac.id
}

output "storage_ac_primary_connection_string" {
    value = azurerm_storage_account.storage_ac.primary_connection_string
}
