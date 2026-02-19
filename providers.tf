provider "databricks" {
  alias      = "account"
  #host       = var.databricks_host
  #account_id = var.databricks_account_id
}

provider "azurerm" {
  features {}
}

provider "azuread" {}
