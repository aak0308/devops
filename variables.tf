variable "location" {}
variable "rg_name" {}

#module_storage_ac
variable "storage_account_tier" {}
variable "storage_account_replication_type" {}
variable "storageaccount" {} 

#module_network
variable "vnetname" {}
variable "subnet1" {}
variable "subnet2" {}
variable "vnet_address_space" {}
variable "subnet1_address_space" {}
variable "subnet2_address_space" {}
variable "nsg_name" {}
variable "ddos_plan_name" {}

#module_VirtualMachine
variable "vm_name" {}
variable "vm_size" {}


