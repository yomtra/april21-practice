locals {
  workspace_environments = ["sandbox", "dev", "test", "uat", "prod"]
}

resource "tfe_workspace" "workspaces" {
  for_each = toset(local.workspace_environments)
  name     = "network-${each.key}"
  organization = "CL30"
}