terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.72.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "zishan-resourcegroup"
    storage_account_name = "zishan123"
    container_name       = "tfstate"
    key                  = "Load_Balancer_for_each/prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}