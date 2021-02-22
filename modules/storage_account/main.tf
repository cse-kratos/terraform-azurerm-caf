terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }

    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
  required_version = ">= 0.13"
}