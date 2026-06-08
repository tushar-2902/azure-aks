resource "azurerm_role_assignment" "acr_pull" {

  scope                = var.acr_id
  role_definition_name = "AcrPull"

  principal_id = var.kubelet_object_id

  skip_service_principal_aad_check = true
}