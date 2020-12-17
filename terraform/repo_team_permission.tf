variable "infracloud_repos" {
  default = {
    "maintain" = ["tink", "tinkerbell.org", "boots", "hegel", "osie", "osie-og", "pbnj"],
    "pull"     = ["portal", "crossplane-provider-tinkerbell"],
    "push"     = ["tinkerbell-docs"]
  }
}

locals {
  infracloud_list = flatten([
    for permission, repositories in var.infracloud_repos : [
      for repository in repostiories : {
        permission = permission
        repository = repository
      }
    ]
  ])
}

resource "github_team_repository" "infracloud" {
  team_id    = github_team.Infracloud.id
  for_each   = local.infracloud_list
  permission = each.value.permission
  repository = each.value.repository
}


# Site Eng

resource "github_team_repository" "site_eng_tink" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "tink"
}
resource "github_team_repository" "site_eng_boots" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "boots"
}
resource "github_team_repository" "site_eng_hegel" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "hegel"
}
resource "github_team_repository" "site_eng_osie" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "osie"
}
resource "github_team_repository" "site_eng_tftp_go" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "tftp-go"
}
resource "github_team_repository" "site_eng_pbnj" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = "pbnj"
}
resource "github_team_repository" "site_eng_github" {
  team_id    = github_team.site-eng.id
  permission = "admin"
  repository = ".github"
}
resource "github_team_repository" "site_eng_crossplane_provider_tinkerbell" {
  team_id    = github_team.site-eng.id
  permission = "pull"
  repository = "crossplane-provider-tinkerbell"
}


# DevRel

resource "github_team_repository" "devrel_tink" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "tink"
}
resource "github_team_repository" "devrel_tinkerbell_org" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "tinkerbell.org"
}
resource "github_team_repository" "devrel_boots" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "boots"
}
resource "github_team_repository" "devrel_hegel" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "hegel"
}
resource "github_team_repository" "devrel_osie" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "osie"
}
resource "github_team_repository" "devrel_pbnj" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "pbnj"
}
resource "github_team_repository" "devrel_github" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = ".github"
}
resource "github_team_repository" "devrel_tinkerbell_docs" {
  team_id    = github_team.devrel.id
  permission = "maintain"
  repository = "tinkerbell-docs"
}
resource "github_team_repository" "devrel_crossplane_provider_tinkerbell" {
  team_id    = github_team.devrel.id
  permission = "pull"
  repository = "crossplane-provider-tinkerbell"
}
