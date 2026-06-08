variable "vn" {
  type = map(object({
    vn_name = string
    location =string
    rg_name=string 
  }))
}