provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "localstack" {
  name              = "localstack"
  repository        = "https://helm.localstack.cloud"
  chart             = "localstack"
  namespace         = "localstack"
  create_namespace  = true
}

