variable "length2" {
  default = 16
}

variable "special2" {
  default = true
}

variable "override2" {
  default = "any name for this test"
}

resource "random_string" "random1" {
  length           = var.length2
  special          = var.special2
  override_special = var.override2

}



