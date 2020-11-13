terraform {
  backend "remote" {
    organization = "tinkerbell"

    workspaces {
      name = "github_management"
    }
  }
}

provider "github" {
  organization = "tinkerbell"
}
