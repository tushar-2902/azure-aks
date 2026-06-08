resource "azurerm_virtual_network" "example" {
  for_each = var.vn
  name                = each.value.vn_name
  address_space       = ["10.0.0.0/16"]
  location            = each.value.location
  resource_group_name = each.value.rg_name
}

