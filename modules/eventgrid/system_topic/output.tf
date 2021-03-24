output id {
  value       = azurerm_eventgrid_system_topic.system_topic.id
  description = "The ID of the Event Grid System Topic"
}

output metric_arm_resource_id {
  value       = azurerm_eventgrid_system_topic.system_topic.metric_arm_resource_id
  description = "The Metric ARM Resource ID of the Event Grid System Topic"
}

output name {
  value = azurerm_eventgrid_system_topic.system_topic.name
}