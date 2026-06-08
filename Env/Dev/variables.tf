variable "rg_dev" {
  type = map(object({
    rg_name = string
    location = string 
  }))
}

variable "sb_dev" {
  type = map(object({
    sb_name = string
    rg_name =string
    vn_name =string
    
  }))
}

variable "vn_dev" {
  type = map(object({
    vn_name = string
    location =string
    rg_name=string 
  }))
}

variable "acr_dev" {
  type = map(object({
    acr_name =string
    rg_name =string
    location =string
  }))
}


variable "aks_dev" {
  type = map(object({
    aks_name=string
    rg_name=string
    location=string 
  }))
}



