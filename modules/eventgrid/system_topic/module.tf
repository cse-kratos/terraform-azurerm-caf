resource "azurerm_eventgrid_system_topic" "system_topic" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location
  source_arm_resource_id = var.source_arm_resource_id
  topic_type             = var.topic_type
  tags                   = merge(var.tags, var.base_tags)
}