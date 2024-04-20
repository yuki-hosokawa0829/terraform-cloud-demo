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