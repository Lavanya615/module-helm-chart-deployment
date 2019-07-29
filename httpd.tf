resource "helm_release" "httpd" {
  name      = var.name
  chart     = "./httpd"
  namespace = var.namespace

  set {
    name  = "server.replicas"
    value = var.replicas
  }

  provisioner "local-exec" {
    command = "helm test ${var.name}"
  }
}

