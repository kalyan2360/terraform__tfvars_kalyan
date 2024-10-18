variable "list_num1" {
  type = list(number)
}

variable "map_var1" {
  type = map(bool)
}


variable "tuple_str1" {
  type = tuple([string, number, list(any)])

}

variable "obj_str_cont1" {
  type = object({
    filename1 = string
    id        = number
    name      = string
    address   = list(string)
  })
}

resource "local_file" "complex_data1" {
  filename = var.tuple_str1[0]
  content  = var.obj_str_cont1.address[0]
}

resource "random_string" "ram_complex1" {
  length           = var.obj_str_cont1.id
  special          = var.tuple_str1[2][3]
  override_special = var.obj_str_cont1.name
}

