terraform {
  backend "remote" {
    organization = "manan-k8sterraform"

    workspaces {
      name = "manan-dev"
    }
  }
}