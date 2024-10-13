variable "num1" {
  type = number
}
variable "boolvariable" {
  type = bool
}
variable "str" {
  type = string
}
variable "str_cont" {
  type = string
}

resource "local_file" "prim_data" {
  filename = var.str
  content  = var.str_cont
}

resource "random_string" "ram_prim" {
  length           = var.num1
  special          = var.boolvariable
  override_special = var.str_cont
}

