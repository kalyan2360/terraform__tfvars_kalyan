
data "local_file" "data_res1" {

  filename = "/home/kalyan2/terraform_files/random.auto.tfvars"
  #	content = "some value from data resource1"
}

resource "local_file" "res_demo1" {

  filename = "demo_res1.log"
  content  = data.local_file.data_res1.content
}

output out_contant{
	value = data.local_file.data_res1.filename
}
