terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstateaccount003"
    container_name       = "prod-container"
    key                  = "prod.tfstate"
  }
}

module "azure_log_analytics_workspace" {
  source = "../tf_modules/log_analytics"

  location                     = var.location
  resource_name_workload       = var.resource_name_workload
  resource_name_environment    = var.resource_name_environment
  resource_name_sequence_start = var.resource_name_sequence_start
  tags                        = var.tags
}