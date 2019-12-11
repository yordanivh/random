resource "random_id" "example" {

  byte_length = 8
}

output "id" {
  value = "${random_id.example.hex}"
}


