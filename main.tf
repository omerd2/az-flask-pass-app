terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.69.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "113ef6ac-322e-4585-b77a-fd82a66fc03a"
  features {}
}

module "python-pass-app" {
  source = "./python-pass-app"
}


