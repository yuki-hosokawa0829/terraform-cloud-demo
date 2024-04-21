variable "name_length" {
  description = "The number of words in the pet name"
  type        = number
  default     = "3"
}

variable "location" {
  description = "The Azure Region in which all resources will be created."
  type        = string
  default     = "Japan West"
}

variable "network_range" {
  description = "The address space that is used by the virtual network."
  type        = string
  default     = "192.168.0.0/24"
}

variable "peer_network_range" {
  description = "The address space that is used by the virtual network."
  type        = string
  default     = "172.16.0.0/16"
}

variable "number_of_subnets" {
  description = "The number of subnets to create within the virtual network."
  type        = number
  default     = 3
}

variable "number_of_peering_subnets" {
  description = "The number of subnets to create within the virtual network."
  type        = number
  default     = 2
}