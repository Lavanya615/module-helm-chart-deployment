variable "cluster-password" {
  description = "cluster-password to connect to"
  default     = "admin"
}

variable "cluster-client-cert" {
  description = "cluster-client-cert to connect to"
  default     = "${/opt/ibm/cluster/cfc-certs/kubelet-client.crt}"
}

variable "cluster-client-key" {
  description = "cluster-client-key to connect to"
  default     = "${/opt/ibm/cluster/cfc-certs/kubelet-client.key}"
}

variable "cluster-ca-certificate" {
  description = "cluster-ca-certificate to connect to"
  default     = "___INSERT_YOUR_OWN____"
}

variable "cluster-host" {
  description = "cluster-host to connect to"
  default     = "___INSERT_YOUR_OWN____"
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
