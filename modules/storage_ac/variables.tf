variable "storageaccount" {
    description = "Storage account name"
}

variable "resource_group_name" {
  description = "resource group where storage account will be created"
}

variable "location" {
  description = "location name where storage account will be created"
}

variable "storage_account_replication_type" {}

variable "storage_account_tier" {}