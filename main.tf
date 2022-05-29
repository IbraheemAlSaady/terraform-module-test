variable "length" {
  type    = number
  default = 16
}

resource "random_string" "random" {
  length           = var.length
  special          = true
  override_special = "/@£$"
}

resource "random_integer" "number" {
  min = 1
  max = 40
}

output "result" {
  value = random_string.random.result
}

output "number" {
  value = random_integer.number.result
}