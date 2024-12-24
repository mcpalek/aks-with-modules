terraform {
  backend "azurerm" {
    resource_group_name  = "rg-aks-test-001"
    storage_account_name = "testaksstorage13"
    container_name       = "tfstatecontainer"
    key                  = "devops.terraform.tfstate"
  }
}

