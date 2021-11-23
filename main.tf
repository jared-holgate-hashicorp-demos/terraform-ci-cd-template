terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  backend "remote" {
    organization = "jared-holgate-hashicorp"

    workspaces {
      prefix = "azure-vault-"
    }
  }
}

provider "azurerm" {
  features {}
}

module "stack_azure_virtual_machine_example" {
  source                       = "app.terraform.io/jared-holgate-hashicorp/stack_azure_hashicorp_vault/jaredholgate"
  resource_group_name          = format("%s%s", var.resource_group_name_prefix, var.deployment_environment)
  primary_cluster_size         = 3 
  secondary_cluster_size       = 3
  tags = {
    environment      = var.deployment_environment
    application-name = "Demonstration"
    owner            = "Jared Holgate"
  }
}
