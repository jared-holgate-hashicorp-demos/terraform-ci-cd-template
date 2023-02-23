terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  cloud {
    organization = "jared-holgate-microsoft"
  }
}

provider "azurerm" {
  features {}
}

module "stack_azure_virtual_machine_example" {
  source                       = "app.terraform.io/jared-holgate-microsoft/stack_azure_virtual_machine_example/jaredholgate"
  resource_group_name          = var.resource_group_name
  primary_cluster_size         = var.primary_cluster_size 
  secondary_cluster_size       = var.secondary_cluster_size
  include_demo_vm              = false
  tags = {
    environment      = var.resource_group_name
    application-name = "Demonstration"
    owner            = "Jared Holgate"
  }
}
