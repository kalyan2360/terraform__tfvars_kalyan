
variable "fileName1" {
  default = "x/y/z/test1.txt"
  type    = string
}
variable "fileName1_content" {
  default = "kk"
  type    = string
}
variable "cli_read1" {
  default = " read the value the from command line interpreter "
}
variable "cli_read2" {
  type    = string
  default = "kk"
}

variable "a1" {
  default = 123
}

output "file_id" {
  value = local_file.fileCreation.id
}
resource "local_file" "fileCreation" {
  filename = var.fileName1
  content  = var.fileName1_content
}

