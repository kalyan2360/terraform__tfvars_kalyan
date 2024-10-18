
resource "local_file" "imp_res1" {

  filename = "/home/kalyan2/terraform_files/kk.log"
  content  = "some value from  resource imp_res1 "
}

resource "local_file" "imp_res2" {

  filename = "res123" # here i am making the if of the resource-1 as input as filename for resource-2 
  content  = "some value from  resource imp_res2345 "
  lifecycle {
    ignore_changes = [filename, content]
  }
}

resource "local_file" "expl_res3" {

  filename   = "expl3.txt" # here i am making the if of the resource-1 as input as filename for resource-2
  content    = "some value from  resource imp_res3 "
  depends_on = [local_file.imp_res2, local_file.imp_res4]

}

resource "local_file" "imp_res4" {

  filename = "expl3.txt" # here i am making the if of the resource-1 as input as filename for resource-2
  content  = local_file.imp_res1.content


}

