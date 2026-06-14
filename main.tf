terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
subscription_id = "3be26ab7-d888-4a23-bdbf-ad36fc9e3894"

resource "azurerm_resource_group" "rgblock" {
  name     = "rg-pune"
  location = "eastus"
}


resource "azurerm_storage_account" "storage" {
  name                     = "storagepune"
  resource_group_name      = azurerm_resource_group.rgblock.name
  location                 = azurerm_resource_group.rgblock.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}