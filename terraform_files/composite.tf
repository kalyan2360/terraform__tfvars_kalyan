variable "list_num" {
  type    = list(number)
  default = [11, 12, 13, 14, 15]
}

variable "map_var" {
  type = map(bool)
  default = {
    true1  = true
    false1 = false
  }
}


variable "tuple_str" {
  type    = tuple([string, number, list(any)])
  default = ["user.log", 29, ["pop.log", 78, true, false]]

}

variable "obj_str_cont" {
  type = object({
    filename1 = string
    id        = number
    name      = string
    address   = list(string)
  })

  default = ({
    filename1 = "user1.txt"
    id        = 19
    name      = "kalyan"
    address   = ["Gulbarga", "Bidar", "Raichure"]

  })
}

resource "local_file" "complex_data" {
  filename = var.tuple_str[0]
  content  = var.obj_str_cont.address[0]
}

resource "random_string" "ram_complex" {
  length           = var.obj_str_cont.id
  special          = var.tuple_str[2][3]
  override_special = var.obj_str_cont.name
}

