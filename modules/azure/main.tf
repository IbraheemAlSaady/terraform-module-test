variable "name" {
  default = "my_resource_group"
}

variable "location" {
  default = "westeurope"
}


resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
}

output "id" {
  value = azurerm_resource_group.this.id
}