variable "string_length" {
  type = number
  description = "The length of the random string"
  default = 8
}

resource "random_string" "id" {
  keepers = {
      uuid = uuid()
  }

  length = var.string_length
}

output "random_string" {
  value = random_string.id.result
}
