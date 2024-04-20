run "check_resource_group_name" {
  command = apply

  assert {
    condition     = startswith(azurerm_resource_group.example.name, "rg-")
    error_message = "Resource group name should begin with rg-."
  }
}

run "check_resource_group_location" {
  command = plan

  assert {
    condition     = azurerm_resource_group.example.location == "japanwest"
    error_message = "Resource should be deployed at japanwest region."
  }
}