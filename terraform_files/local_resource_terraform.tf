

resource "local_file" "demo2" {
  filename = "demo_terraform2.txt"
  content  = "this is my second file in terraform so i have done some changes 123 "
}

resource "local_file" "demo3" {
  filename = "demo_terraform3.txt"
  content  = "this is my third file in terraform so i have done some changes  "
}

