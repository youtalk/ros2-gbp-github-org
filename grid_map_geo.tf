locals {
  grid_map_geo_team = [
    "Jaeyoung-Lim",
    "Ryanf55",
  ]
  grid_map_geo_repositories = [
    "grid_map_geo-release",
  ]
}

module "grid_map_geo_team" {
  source       = "./modules/release_team"
  team_name    = "grid_map_geo"
  members      = local.grid_map_geo_team
  repositories = local.grid_map_geo_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
