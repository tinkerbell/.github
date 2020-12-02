resource "github_team_repository" "infracloud_tink" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "tink"
}
resource "github_team_repository" "infracloud_tinkerbell_org" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "tinkerbell.org"
}
resource "github_team_repository" "infracloud_boots" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "boots"
}
resource "github_team_repository" "infracloud_hegel" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "hegel"
}
resource "github_team_repository" "infracloud_osie_og" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "osie-og"
}
resource "github_team_repository" "infracloud_osie" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "osie"
}
resource "github_team_repository" "infracloud_portal" {
  team_id    = github_team.Infracloud.id
  permission = "pull"
  repository = "portal"
}
resource "github_team_repository" "infracloud_pbnj" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = "pbnj"
}
resource "github_team_repository" "infracloud_github" {
  team_id    = github_team.Infracloud.id
  permission = "maintain"
  repository = ".github"
}
resource "github_team_repository" "infracloud_tinkerbell_docs" {
  team_id    = github_team.Infracloud.id
  permission = "push"
  repository = "tinkerbell-docs"
}
resource "github_team_repository" "infracloud_crossplane_provider_tinkerbell" {
  team_id    = github_team.Infracloud.id
  permission = "pull"
  repository = "crossplane-provider-tinkerbell"
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
