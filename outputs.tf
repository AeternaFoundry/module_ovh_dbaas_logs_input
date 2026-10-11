output "dbaas_logs_inputs_id" {
  description = "Map of id values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no id are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dbaas_logs_inputs_allowed_networks" {
  description = "Map of allowed_networks values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no allowed_networks are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.allowed_networks if v.allowed_networks != null && length(v.allowed_networks) > 0 }
}
output "dbaas_logs_inputs_autoscale" {
  description = "Map of autoscale values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no autoscale are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.autoscale if v.autoscale != null }
}
output "dbaas_logs_inputs_configuration" {
  description = "Map of configuration values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no configuration are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "dbaas_logs_inputs_created_at" {
  description = "Map of created_at values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no created_at are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "dbaas_logs_inputs_current_nb_instance" {
  description = "Map of current_nb_instance values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no current_nb_instance are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.current_nb_instance if v.current_nb_instance != null }
}
output "dbaas_logs_inputs_description" {
  description = "Map of description values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no description are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dbaas_logs_inputs_engine_id" {
  description = "Map of engine_id values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no engine_id are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.engine_id if v.engine_id != null && length(v.engine_id) > 0 }
}
output "dbaas_logs_inputs_exposed_port" {
  description = "Map of exposed_port values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no exposed_port are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.exposed_port if v.exposed_port != null && length(v.exposed_port) > 0 }
}
output "dbaas_logs_inputs_hostname" {
  description = "Map of hostname values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no hostname are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "dbaas_logs_inputs_input_id" {
  description = "Map of input_id values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no input_id are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.input_id if v.input_id != null && length(v.input_id) > 0 }
}
output "dbaas_logs_inputs_is_restart_required" {
  description = "Map of is_restart_required values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no is_restart_required are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.is_restart_required if v.is_restart_required != null }
}
output "dbaas_logs_inputs_max_scale_instance" {
  description = "Map of max_scale_instance values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no max_scale_instance are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.max_scale_instance if v.max_scale_instance != null }
}
output "dbaas_logs_inputs_min_scale_instance" {
  description = "Map of min_scale_instance values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no min_scale_instance are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.min_scale_instance if v.min_scale_instance != null }
}
output "dbaas_logs_inputs_nb_instance" {
  description = "Map of nb_instance values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no nb_instance are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.nb_instance if v.nb_instance != null }
}
output "dbaas_logs_inputs_public_address" {
  description = "Map of public_address values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no public_address are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.public_address if v.public_address != null && length(v.public_address) > 0 }
}
output "dbaas_logs_inputs_service_name" {
  description = "Map of service_name values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no service_name are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "dbaas_logs_inputs_ssl_certificate" {
  description = "Map of ssl_certificate values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no ssl_certificate are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.ssl_certificate if v.ssl_certificate != null && length(v.ssl_certificate) > 0 }
  sensitive   = true
}
output "dbaas_logs_inputs_status" {
  description = "Map of status values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no status are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.status if v.status != null && length(v.status) > 0 }
}
output "dbaas_logs_inputs_stream_id" {
  description = "Map of stream_id values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no stream_id are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.stream_id if v.stream_id != null && length(v.stream_id) > 0 }
}
output "dbaas_logs_inputs_title" {
  description = "Map of title values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no title are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.title if v.title != null && length(v.title) > 0 }
}
output "dbaas_logs_inputs_updated_at" {
  description = "Map of updated_at values across all dbaas_logs_inputs, keyed the same as var.dbaas_logs_inputs except keys with no updated_at are omitted"
  value       = { for k, v in ovh_dbaas_logs_input.dbaas_logs_inputs : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

