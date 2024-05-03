locals {
  kuka_team = [
    "Svastits",
    "VX792",
    "kovacsge11",
  ]
  kuka_repositories = [
    "kuka_drivers-release",
    "kuka_external_control_sdk-release",
    "kuka_robot_descriptions-release",
  ]
}

module "kuka_team" {
  source       = "./modules/release_team"
  team_name    = "kuka"
  members      = local.kuka_team
  repositories = local.kuka_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}

