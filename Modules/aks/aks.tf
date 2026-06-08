resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.aks
  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = "tushar-dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
   

 network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }


  tags = {
    Environment = "Production"
  }
}

