variable "aks" {
  type = map(object({
    aks_name=string
    rg_name=string
    location=string 
  }))
}

