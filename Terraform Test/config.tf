terraform{
 backend "azurerm"{
  storage_account_name = "storage-account-name"
    container_name = "container-name"
    key = "terraform-devops-question.tfstate"
    access_key = "storage account access key"
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.79.1"
    }
  }

  required_version = ">= 0.14"

}


