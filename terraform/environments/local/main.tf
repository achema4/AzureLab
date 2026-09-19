terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38"
    }
  }

  required_version = "~> 1.15"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace_v1" "azurelabs" {
  metadata {
    name = "azurelabs"

    labels = {
      project     = "AzureLabs"
      environment = "local"
    }
  }
}