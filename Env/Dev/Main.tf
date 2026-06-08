module "rg_dev" {
  source = "../../Modules/resource_group"
  rg = var.rg_dev
  
}

module "vn_dev" {
  depends_on = [ module.rg_dev ]
  source = "../../Modules/Virtual_network"
  vn = var.vn_dev
}

module "sb_dev" {
  depends_on = [ module.vn_dev ]
  source = "../../Modules/Subnets"
  sb = var.sb_dev
}

module "acr" {
  depends_on = [ module.sb_dev ]
  source = "../../Modules/acr"
  acr =var.acr_dev
}

module "aks" {
  depends_on = [ module.acr ]
  source = "../../Modules/aks"
  aks = var.aks_dev

}

