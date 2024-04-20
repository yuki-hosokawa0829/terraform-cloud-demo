# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

## Terraform configuration

terraform {
  cloud {
    organization = "yuki-tf-workspace"
    workspaces {
      name = "terraform-cloud-demo"
    }

  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }

  required_version = ">= 1.6.0"
}

provider "azurerm" {
  features {}
  
}

resource "random_pet" "pet_name" {
  length    = var.name_length
  separator = "-"
}

resource "azurerm_resource_group" "example" {
  name     = "rg-${random_pet.pet_name.id}"
  location = var.location
}

module "network" {
  source = "./modules/network"

  location            = var.location
  prefix              = random_pet.pet_name.id
  resource_group_name = azurerm_resource_group.example.name
}