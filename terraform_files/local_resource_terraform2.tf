
resource "local_file" "demo4" {
  filename = "demo_terraform4.txt"
  content  = "this is my forth file in terraform so i have done some changes 123 "
}

resource "local_file" "demo5" {
  filename = "demo_terraform5.txt"
  content  = "this is my fifth file in terraform so i have done some changes"
}


