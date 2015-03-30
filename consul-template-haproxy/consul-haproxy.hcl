template {
  source = "/etc/consul-template/templates/haproxy.ctmpl"
  destination = "/etc/haproxy/haproxy.cfg"
  command = "supervisorctl restart haproxy"
}
