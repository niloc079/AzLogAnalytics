# Creates Log Anaylytics Workspace
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace
resource "azurerm_log_analytics_workspace" "loganalytics" {
    name                = "${var.environment}${var.application}${var.iteration}-law"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    sku                 = "PerGB2018"
    retention_in_days   = 30
    tags                = var.tags
}
