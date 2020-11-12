terraform {
  backend "remote" {
    organization = "tinkerbell"

    workspaces {
      name = "github_management"
    }
  }
}

provider "github" {
  token        = var.github_token
  organization = "tinkerbell"
}
