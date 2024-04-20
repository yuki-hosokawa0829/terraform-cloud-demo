variable "location" {
  description = "The Azure Region in which all resources will be created."
  type        = string
}

variable "prefix" {
  description = "A prefix to add to all resource names"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which all resources will be created."
  type        = string
}

locals {
  network_range     = "192.168.0.0/24"
  number_of_subnets = 3
}