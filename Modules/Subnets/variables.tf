variable "sb" {
  type = map(object({
    sb_name = string
    rg_name =string
    vn_name =string
    
  }))
}