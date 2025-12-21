terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "todo_assignment"
    storage_account_name = "todostoragesantosh"
    container_name       = "todocontainer"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e5476362-58a0-48f7-8197-5aa05a4abfa5"
}