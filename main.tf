resource "azurerm_resource_group" "example" {
  name     = "newterra-resource"
  location = "West Europe"
  lifecycle {
    prevent_destroy = true
  }
}


resource "azurerm_storage_account" "example" {
  name                     = "newterrastorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }

}

