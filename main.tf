terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tharanirg"
    storage_account_name = "strgfile"
    container_name = "terraform"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features{
    
  }
}