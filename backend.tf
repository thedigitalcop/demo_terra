terraform {
  backend "azurerm" {
    resource_group_name  = "terrabackup"
    storage_account_name = "backupterra"
    container_name       = "prod-terra"
    key                  = "terraform.tfstate"
  }
}