terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
   backend "azurerm" {
      resource_group_name  = "azdmoacrrg"
      storage_account_name = "azstoreaccdemotest"
      container_name       = "aztffilestore"
      key                  = "terraform.tfstate"
      use_oidc             = true
      subscription_id      = "ae231b2f-8211-4f88-b5c1-df0bf3fd97f0"
      tenant_id            = "ae58859f-9c48-4516-b237-63f152186d8d"
      client_id            = "091fd078-3ba1-4aba-82f9-4cf3b28038a2"
  }
}

provider "azurerm" {
  use_oidc = true
  features {}
}

