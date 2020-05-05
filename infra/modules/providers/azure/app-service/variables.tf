variable "service_plan_resource_group_name" {
  description = "The name of the resource group in which the service plan was created."
  type        = string
}

variable "service_plan_name" {
  description = "The name of the service plan"
  type        = string
}

variable "app_service_name_prefix" {
  description = "String value prepended to the name of each app service"
  type        = string
}

variable "uses_acr" {
  description = "Determines whether or not an Azure container registry is being used"
  type        = bool
  default     = false
}

variable "azure_container_registry_name" {
  description = "The name of the azure container registry resource"
  type        = string
  default     = ""
}

variable "resource_tags" {
  description = "Map of tags to apply to taggable resources in this module. By default the taggable resources are tagged with the name defined above and this map is merged in"
  type        = map(string)
  default     = {}
}

variable "app_service_settings" {
  description = "Map of app settings that will be applied across all provisioned app services."
  type        = map(string)
  default     = {}
}

variable "app_service_config" {
  description = "Metadata about the app services to be created."
  type = map(object({
    image            = string
    linux_fx_version = string
    app_command_line = string
    app_settings     = map(string)
  }))
  default = {}
}

variable "enable_storage" {
  description = "Determines whether or not a storage is attached to the app service."
  type        = bool
  default     = false
}

variable "vault_uri" {
  description = "Specifies the URI of the Key Vault resource. Providing this will create a new app setting called KEYVAULT_URI containing the uri value."
  type        = string
  default     = ""
}

variable "app_insights_instrumentation_key" {
  description = "The Instrumentation Key for the Application Insights component used for app service to be created"
  type        = string
  default     = ""
}

variable "site_config_always_on" {
  description = "Should the app be loaded at all times? Defaults to true."
  type        = string
  default     = true
}

variable "uses_vnet" {
  description = "Determines whether or not a virtual network is being used"
  type        = bool
  default     = false
}

variable "vnet_name" {
  description = "The vnet integration name."
  type        = string
  default     = ""
}

variable "vnet_subnet_id" {
  description = "The vnet integration subnet gateway identifier."
  type        = string
  default     = ""
}

variable "docker_registry_server_url" {
  description = "The docker registry server URL for app service to be created"
  type        = string
  default     = ""
}

variable "docker_registry_server_username" {
  description = "The docker registry server username for app service to be created"
  type        = string
  default     = ""
}

variable "docker_registry_server_password" {
  description = "The docker registry server password for app service to be created"
  type        = string
  default     = ""
}

variable "app_insights_version" {
  description = "The Extension version for Application Insights"
  type        = string
  default     = "~2"
}