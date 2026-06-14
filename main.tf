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