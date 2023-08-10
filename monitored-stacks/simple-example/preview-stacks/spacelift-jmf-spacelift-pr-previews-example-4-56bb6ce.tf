module "spacelift-jmf_spacelift-pr-previews-example_4_56bb6ce" {
  source = "../template"

  branch     = "jmfontaine-patch-1"
  policy_ids = var.policy_ids
  preview_id = "56bb6ce"
  space_id   = var.space_id

  providers = {
    spacelift = spacelift
  }
}
