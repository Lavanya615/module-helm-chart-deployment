variable "cluster-password" {
  description = "cluster-password to connect to"
  default     = "admin"
}

variable "cluster-client-cert" {
  description = "cluster-client-cert to connect to"
  default     = "/opt/ibm/cluster/cfc-certs/helm/admin.crt"
}

variable "cluster-client-key" {
  description = "cluster-client-key to connect to"
  default     = "/opt/ibm/cluster/cfc-certs/helm/admin.key"
}

variable "cluster-ca-certificate" {
  description = "cluster-ca-certificate to connect to"
  default     = "/opt/ibm/cluster/cfc-keys/ca.crt"
}

variable "cluster-host" {
  description = "cluster-host to connect to"
  default     = "https://9.109.190.146:8443/"
}

variable "cluster-username" {
  description = "cluster-username to connect to"
  default     = "admin"
}

variable "name" {
  description = "name of the chart"
  default     = "http-chart"
}

variable "namespace" {
  description = "namespace to connect to"
  default     = "default"
}

variable "replicas" {
  description = "replicas"
  default     = "1"
}

