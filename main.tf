resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo hello world!!"
  }
}

module "hello_world" {
  environment = var.environment
  source      = "https://tfe-zone-1533d000.ngrok.io/app/hashicorp/modules/view/helloworld/aws"
  version     = "2020.04.21"
}
