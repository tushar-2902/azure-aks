resource "azurerm_subnet" "example" {
  for_each = var.sb 
  name                 = each.value.sb_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vn_name
  address_prefixes     = ["10.0.1.0/24"]
}

