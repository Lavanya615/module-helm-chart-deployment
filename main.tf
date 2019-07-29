provider "kubernetes" {
  host     = var.cluster-host
  username = var.cluster-username
  password = var.cluster-password

  client_certificate     = base64decode(var.cluster-client-cert)
  client_key             = base64decode(var.cluster-client-key)
  cluster_ca_certificate = base64decode(var.cluster-ca-certificate)
}

resource "kubernetes_service_account" "tiller" {
  metadata {
    name      = "tiller"
    namespace = "kube-system"
  }
}

resource "kubernetes_cluster_role_binding" "tiller" {
  metadata {
    name = "tiller"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }

  # api_group has to be empty because of a bug:
  # https://github.com/terraform-providers/terraform-provider-kubernetes/issues/204
  subject {
    api_group = ""
    kind      = "ServiceAccount"
    name      = "tiller"
    namespace = "kube-system"
  }
}

provider "helm" {
  install_tiller  = true
  service_account = "tiller"
  namespace       = "kube-system"
  kubernetes {
    host     = var.cluster-host
    username = var.cluster-username
    password = var.cluster-password

    client_certificate     = base64decode(var.cluster-client-cert)
    client_key             = base64decode(var.cluster-client-key)
    cluster_ca_certificate = base64decode(var.cluster-ca-certificate)
  }
}

