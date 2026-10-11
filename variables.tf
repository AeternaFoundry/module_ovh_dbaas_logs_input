variable "dbaas_logs_inputs" {
  description = <<EOT
Map of dbaas_logs_inputs, attributes below
Required:
    - description
    - engine_id
    - service_name
    - stream_id
    - title
    - configuration (block):
        - flowgger (optional, block):
            - log_format (required)
            - log_framing (required)
        - logstash (optional, block):
            - filter_section (optional)
            - input_section (required)
            - pattern_section (optional)
Optional:
    - allowed_networks
    - autoscale
    - exposed_port
    - max_scale_instance
    - min_scale_instance
    - nb_instance
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    description        = string
    engine_id          = string
    service_name       = string
    stream_id          = string
    title              = string
    allowed_networks   = optional(set(string))
    autoscale          = optional(bool)
    exposed_port       = optional(string)
    max_scale_instance = optional(number)
    min_scale_instance = optional(number)
    nb_instance        = optional(number)
    configuration = object({
      flowgger = optional(object({
        log_format  = string
        log_framing = string
      }))
      logstash = optional(object({
        filter_section  = optional(string)
        input_section   = string
        pattern_section = optional(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

