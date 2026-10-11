resource "ovh_dbaas_logs_input" "dbaas_logs_inputs" {
  for_each = var.dbaas_logs_inputs

  description        = each.value.description
  engine_id          = each.value.engine_id
  service_name       = each.value.service_name
  stream_id          = each.value.stream_id
  title              = each.value.title
  allowed_networks   = each.value.allowed_networks
  autoscale          = each.value.autoscale
  exposed_port       = each.value.exposed_port
  max_scale_instance = each.value.max_scale_instance
  min_scale_instance = each.value.min_scale_instance
  nb_instance        = each.value.nb_instance

  configuration {
    dynamic "flowgger" {
      for_each = each.value.configuration.flowgger != null ? [each.value.configuration.flowgger] : []
      content {
        log_format  = flowgger.value.log_format
        log_framing = flowgger.value.log_framing
      }
    }
    dynamic "logstash" {
      for_each = each.value.configuration.logstash != null ? [each.value.configuration.logstash] : []
      content {
        filter_section  = logstash.value.filter_section
        input_section   = logstash.value.input_section
        pattern_section = logstash.value.pattern_section
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

