terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  backend "remote" {
    organization = "jaredfholgate-hashicorp"

    workspaces {
      prefix = "jared-holgate-demo-one-"
    }
  }
}

provider "azurerm" {
  features {}
}

module "stack_azure_virtual_machine_example" {
  source                       = "app.terraform.io/jaredfholgate-hashicorp/stack_azure_virtual_machine_example/jaredholgate"
  resource_group_name          = format("%s%s", var.resource_group_name_prefix, var.deployment_environment)
  primary_cluster_size         = 3 
  secondary_cluster_size       = 3
  include_demo_vm              = false
  tags = {
    environment      = var.deployment_environment
    application-name = "Demonstration"
    owner            = "Jared Holgate"
  }
}
