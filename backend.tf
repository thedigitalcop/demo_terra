terraform {
  backend "azurerm" {
    resource_group_name  = "newterra-resource"
    storage_account_name = "newterrastorage"
    container_name       = "prod-terra"
    key                  = "terraform.tfstate"
  }
}