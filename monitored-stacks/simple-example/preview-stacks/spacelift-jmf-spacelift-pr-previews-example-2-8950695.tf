module "spacelift-jmf_spacelift-pr-previews-example_2_" {
  source = "../template"

  branch     = "jmfontaine-patch-2"
  policy_ids = var.policy_ids
  preview_id = "8950695"
  space_id   = var.space_id

  providers = {
    spacelift = spacelift
  }
}
