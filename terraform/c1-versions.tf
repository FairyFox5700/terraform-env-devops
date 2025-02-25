terraform {
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "terrraformstorageaccount"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    } 
  }
}

provider "azurerm" {
  features {}
}

