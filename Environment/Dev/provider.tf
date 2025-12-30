terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "infra_pipeline_3012"
    storage_account_name = "infrapipeline3012"
    container_name       = "infrapipeline3012"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1b05e470-de80-481a-8feb-07829124ebd9"

}
