terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.69.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

module "python-pass-app" {
  source = "./python-pass-app"
}


