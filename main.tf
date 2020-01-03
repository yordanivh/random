terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yordanh_free"

    workspaces {
      name = "random"
    }
  }
}
resource "random_id" "example" {

  byte_length = 8
}

output "id" {
  value = "${random_id.example.hex}"
}


