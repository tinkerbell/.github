terraform {
  backend "remote" {
    organization = "tinkerbell"

    workspaces {
      name = "github_management"
    }
  }
}

variable "github_token" {
  description = "GitHub token"
  type        = string
}

provider "github" {
  token        = var.github_token
  organization = "tinkerbell"
}

