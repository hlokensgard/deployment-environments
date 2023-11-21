resource "azurerm_resource_group" "this" {
    name     = "testing-deploymentenv"
    location = "westeurope"
}

provider "azurerm" {
  features {}

  skip_provider_registration = true
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  required_version = ">= 1.0.0"
}