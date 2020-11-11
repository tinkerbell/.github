resource "github_team" "site-eng" {
    name    = "site-eng"
    privacy = "closed"
}

resource "github_team" "Infracloud" {
    name    = "Infracloud"
    privacy = "closed"
}

resource "github_team" "devrel" {
    name    = "devrel"
    privacy = "closed"
}
