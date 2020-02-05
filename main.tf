resource "null_resource" "test" {}

provider "template" {}

terraform {
  required_providers {
    null = {
      source = "registry.terraform.io/hashicorp/null"
      version = ">= 2.0.0"
    }
    foobar = {
      source = "partner/foobar"
      version = "0.1.4"
    }
    dne = {
      source = "custom-registry.io/random/dne"
    }
  }
}
