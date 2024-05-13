terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# Criar um Resource Group para todos os recursos
resource "azurerm_resource_group" "rg-tf" {
  name = "rg-terraform"
  location = "eastus2"
  
}