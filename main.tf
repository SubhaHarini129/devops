terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstateharini123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "320fb61f-2500-4465-9cb2-ca21d99aa5b2"
}
module "storage" {
source = "./modules/storageaccount"
resource_group_name = "rg-simple-tf"
location = "eastus"
storage_account_name = "simplestoragesubha001"
}
