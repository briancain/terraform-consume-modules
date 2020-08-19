resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo hello world!!"
  }
}

module "helloworld" {
  source  = "briancain/helloworld/aws"
  version = "2020.4.21"
  password = "password"
}
