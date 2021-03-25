###### azurerm_eventgrid_system_topic
module "eventgrid_system_topic" {
  source = "./modules/eventgrid/system_topic"

  for_each = local.eventgrid.system_topic

  name                   = each.value.name
  location               = lookup(each.value, "region", null) == null ? module.resource_groups[each.value.resource_group_key].location : local.global_settings.regions[each.value.region]
  resource_group_name    = module.resource_groups[each.value.resource_group_key].name
  source_arm_resource_id = local.eventgrid.combined_arm_resources[each.value.source_arm_resource_key].id
  topic_type             = each.value.topic_type
  base_tags              = try(local.global_settings.inherit_tags, false) ? module.resource_groups[each.value.resource_group_key].tags : {}
  tags                   = try(each.value.tags, null)
}

output "eventgrid_system_topic" {
  value = module.eventgrid_system_topic
}