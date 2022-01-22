storage "consul" {
  address = "consul:8500"
  path    = "vault"
}

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = true
    api_addr = "https://0.0.0.0:8200"
}

telemetry {
  disable_hostname = true
  prometheus_retention_time = "12h"
}

log_level = "info"
ui = true