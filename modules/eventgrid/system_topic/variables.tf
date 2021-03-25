variable name {
  description = "(Required) Specifies the name of the HTTP Action to be created within the Logic App Workflow"
}

variable resource_group_name {
  description = "(Required) The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created"
}

variable location {
  description = "(Required) The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created"
}

variable source_arm_resource_id {
  description = "(Required) The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created"
}

variable topic_type {
  description = "Required) The Topic Type of the Event Grid System Topic"
}

variable tags {
  description = "(Optional) A mapping of tags which should be assigned to the Event Grid System Topic"
}

variable base_tags {
  description = "(Optional) A mapping of tags which should be assigned to the Event Grid System Topic"
}