terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.69.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "python-pass-app" {
  source = "./python-pass-app"
  app_zip_file_path = var.app_zip_file_path 
  subscription_id = var.subscription_id
}


